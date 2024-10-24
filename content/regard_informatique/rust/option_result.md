---
title: Pas de doute sur la donnée
draft: false
tags:
  - informatique
  - rust
  - reflexion
---

J'ai commencé avec du C/C++, me suis professionnalisé dans le Java tout en ayant des expériences professionnelles et personnelles dans le Ruby, Python et JavaScript. Dans chacun de ces langages, j'ai pu écrire du code où je **savais** ce qui allait être renvoyé et ce qui **devait** se retrouver dans chaque variable.

Et à chaque fois, je me suis fait avoir. Que ce soit avec des `NullPointerException`, des `undefined` ou des résultats et conversions folkloriques. Souvent dans des POC où il m'importe peu d'être robuste, mais aussi dans du code de production à cause d'une erreur ou d'un oubli.

Mon expérience avec Rust jusqu'ici, c'est que je suis forcé d'écrire ce qu'il **va** se passer.

Par exemple, dans le serveur HTTP que je développe, j'ai été amené à gérer des codes HTTP. Je me suis fait mon petit `enum HTTPCode { OK, BAD_REQUEST, NOT_FOUND }` et de là, il a fallu que je transforme mes codes numériques 200, 400 et 404 en `HTTPCode`.

Premièrement, d'où je récupère mon code ? Supposons, pour l'exercice, que l'on ne soit pas sûr que le code soit transmis et que l'on ait donc en entrée un `Option<&str>`. Pour le moment, je **sais** que je vais avoir quelque chose donc je peux directement récupérer ma valeur : `peut_etre_une_chaine.unwrap()`.

Si c'est une chaîne de caractères, il va falloir que je la `parse` ce qui me retournera un `Result<u32, Error>` et comme je **sais** que c'est du numérique, je peux directement faire

```rust
let code : u32 = peut_etre_une_chaine
	.unwrap()
	.parse::<u32>()
	.unwrap();
```

Avec ces petits `unwrap`, je dis **explicitement** que s'il n'y a pas de code ou que je n'arrive pas à le transformer en `u32`, alors je peux terminer directement mon programme en paniquant. Radical mais de toute façon, je le **sais** que ça va fonctionner et puis, c'est qu'un POC.

Mais j'ai été obligé de l'écrire et de le formuler explicitement et quiconque relira mon code sera au courant que j'ai choisi d'ignorer la possibilité d'erreur.

Maintenant que j'ai mon `code: u32`, il faut toujours que j'en fasse un `HTTPCode`. Pour cela, nous pouvons utiliser le trait `From` et avec une approche naïve se retrouver avec

```rust
impl From<u32> for HTTPCode {
	fn from(value: u32) -> Self {
		match value {
			200 => HTTPCode::OK,
			400 => HTTPCode::BAD_REQUEST,
			404 => HTTPCode::NOT_FOUND,
		}
	}
}
```

Petit souci : ça ne compile pas. En effet, le compilateur m'indique qu'il existe d'autres cas possibles pour value (ce qui semble assez vrai) et qu'il serait de bon ton de gérer ces autres cas.

Alors je **sais** que je n'ai que ces codes là, donc que faire ? On peut rajouter un cas par défaut :

```rust
impl From<u32> for HTTPCode {
	fn from(value: u32) -> Self {
		match value {
			200 => HTTPCode::OK,
			400 => HTTPCode::BAD_REQUEST,
			404 => HTTPCode::NOT_FOUND,
			_ => HTTPCode::WHO_ARE_YOU_OH_UNKNOWN_CODE
		}
	}
}
```

Ce qui impliquera de devoir gérer ce `WHO_ARE_YOU_OH_UNKNOWN_CODE` partout où je devrai faire du pattern-matching sur cet enum, en plus d'être assez laid.

L'autre possibilité est de passer par le `TryFrom`

```rust
impl TryFrom<u32> for HTTPCode {
	type Error = ApplicationError;
	fn try_from(value: u32) -> Result<Self, Error> {
		match value {
			200 => Ok(HTTPCode::OK),
			400 => Ok(HTTPCode::BAD_REQUEST),
			404 => Ok(HTTPCode::NOT_FOUND),
			_ => Err(ApplicationError::EnumError("Je ne reconnais pas ce code HTTP"))
		}
	}
}
```

Nous pouvons désormais, à la manière de `parse`, tenter de transformer notre `u32` en `HTTPCode` et avons **explicitement** défini le comportement de cette opération. Si nous sommes toujours sûrs de nous, nous pouvons maintenant transformer notre code de la façon suivante :

```rust
let code : HTTPCode = HTTPCode::try_from(
		peut_etre_une_chaine
		.unwrap()
		.parse::<u32>()
		.unwrap())
	.unwrap()
```

Et voilà, on a toujours les mêmes risques de faire exploser notre serveur qu'avec une `RuntimeException` mais au moins, nous avons explicité ce comportement et chaque fois que je relirai ces lignes, je me souviendrai que j'ai mis toute ma gestion d'erreurs sous le tapis.

Une fois le stade du POC passé (et quand j'aurai marre d'avoir les yeux qui saignent devant cette accumulation de `unwrap`) je pourrais implémenter une gestion d'erreurs plus fine. Je voudrais sûrement les faire remonter à un plus haut niveau avec des messages, voire des types appropriés.

```rust
fn gestion_du_code(peut_etre_le_code: Option<&str>) -> Result<(), ApplicationError> {
	let code : HTTPCode = peut_etre_le_code
		.ok_or_else(|error| ApplicationError::from(error))? // on pourrait aussi utiliser unwrap_or_default() qui retournerait une chaîne de caractères vide
		.parse::<u32>()
		.map_err(|err| ApplicationError::from("Mais enfin, ce n'est pas un code numérique"))
		.and_then(HTTPCode::try_from)?;

	faire_autre_chose_avec_ce_code(code)
}
```

Et voilà ! Disparition des `unwraps` et gestion des erreurs explicite. Nous avons pu mettre en place cette nouvelle fonctionnalité en ne pouvant à aucun moment ignorer la gestion d'erreur ou l'oublier.

Plus d'implicite basé sur le fait que je **sais** que ça va réagir comme ça parce que, de toute façon, j'ai toujours la bonne donnée qui arrive dans le bon format.

Ce n'est pas le seul endroit où Rust nous force à expliciter nos intentions, mais c'est celui que je trouve le plus parlant. Et cela peut être perçu, à juste titre, comme lourds et potentiellement "encombrant" lors du développement, comme pour le [[propriete_donnee|borrow checker]].

Il me semble néanmoins être un point important permettant de développer du code de production plus et robuste et faciliter les relectures.

## Ressources diverses :

- [panic - Rust Book](https://doc.rust-lang.org/book/ch09-01-unrecoverable-errors-with-panic.html)
- [Result - Rust Book](https://doc.rust-lang.org/book/ch09-02-recoverable-errors-with-result.html)
- [Home made httpServer](https://github.com/superdaminou/ilmen-http)
