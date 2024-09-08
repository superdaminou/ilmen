---
title: Qui peut quoi ?
draft: false
tags:
  - informatique
  - rust
  - reflexion
---

Comme nous l'avons déjà vu avec [[option_result|les Result et Option]], à travers sa conception, Rust nous force à être explicite. Essayons de voir comment le concept central du borrow checker nous contraint également à expliciter notre code et nos intentions.

## Donnée et propriété de la donnée

### Qu'est-ce que le borrow checker ?

Pour faire simple, c'est un système de "propriété" des variables qui permettent au compilateur de savoir qui possède quoi à quel moment. Cette information permet d'allouer et de libérer de la mémoire dès que la variable rentre et sort de son périmètre.

Le borrow checker nous empêche d'utiliser et de modifier des données qui pourraient être exploitées ailleurs.

En Java, le code suivant ne pose aucun souci à la compilation :

```java
String main() {
	String A = "Toto"; // Création d'une instance de String et affectation à A
	String B = A; // B détient la référence vers A
	if (B.equals("Toto")) {...}
	String C = A; // C détient la référence vers A
	if (C.equals("Toto")) {...}
	autre(A);
}
```

Mais ce code pourrait bien nous poser un problème à l'usage. Si C et B sont ensuite utilisés par d'autres méthodes, la valeur pourrait être modifiée dans B, C, et A, nous empêchant de savoir avec certitude quelles données sont contenues à quel moment.

Si nous tentons d'adapter naïvement ce code en Rust :

```rust
fn main() {
	let A: String = "Toto".to_string(); // A devient propriétaire de "Toto"
	let B: String = A; // B est maintenant propriétaire de la valeur "Toto", A n'est plus propriétaire
	if B == "Toto".to_string() {...}
	let C: String = A; // On ne peut pas récupérer la propriété car A n'est plus propriétaire de "Toto"
	if B == "Toto".to_string() {...}
	autre(A); // Nous ne pouvons pas transférer la propriété de A
}
```

Ce code ne compilera pas et nous indiquera que nous ne pouvons pas transférer la propriété de `A` vers `C` car elle a déjà été transférée à `B`. Une fois la valeur de `A` transférée, nous ne pouvons plus agir sur `A`, ce qui évite des effets de bord.

Néanmoins, il est courant que nous cherchions à utiliser la même variable à plusieurs endroits différents. Pour cela, Rust nous offre deux moyens.

### Le clonage

Nous pouvons tout simplement cloner la donnée. La plupart des structures et types de données implémentent le trait `Clone`, ce qui nous permettrait d'adapter notre code de la manière suivante :

```rust
fn main() {
	let A: String = "Toto".to_string(); // A devient propriétaire de "Toto"
	let B: String = A.clone(); // B est maintenant propriétaire d'une nouvelle instance de String
	if B == "Toto".to_string() {...}
	let C: String = A.clone(); // C est propriétaire d'une nouvelle instance de String
	if C == "Toto".to_string() {...}
	autre(A);
}
```

En clonant nos valeurs, nous gardons la possibilité de réutiliser `A` plus tard. Cependant, comme nous avons bien deux instances différentes, les [[mutabilite|modifications]] apportées à l'une de ces variables d'une manière ou d'une autre ne seront jamais répercutées sur les autres variables.

En plus de cette limitation, cette méthode nous coûte de deux façons :

- En mémoire : Nous créons une instance de String à chaque fois. Si nous voulions seulement afficher ou faire un contrôle sur B, il est peu pertinent de créer une nouvelle instance en mémoire.
- En lisibilité : Nous pouvons vite arriver à des blocs de code remplis de `clone` et d'opérations transitives telles que `.map(|value| value.clone())`. Ce qui, à la manière des [[option_result|unwrap]], rend le code moins agréable à lire.

### Le droit de lecture

Comme évoqué rapidement ci-dessus, dans de nombreux cas, nous souhaitons simplement faire des contrôles simples sur nos valeurs et donc seulement lire les données. Pour cela, Rust nous met à disposition `&`. Cette magnifique esperluette indique au compilateur que ces données sont partagées en lecture et que nous n'en sommes pas propriétaires.

Si nous adaptons notre code précédent :

```rust
fn main() {
	let A: String = "Toto".to_string(); // A devient propriétaire de "Toto"
	let B: &String = &A; // B peut lire la donnée
	if B == &"Toto" {...}
	let C: &String = &A; // C peut lire la donnée de A
	if C == &"Toto" {...}
	autre(A); // Nous pouvons transférer à la fin la propriété de A à une autre méthode
}
```

De cette façon, nous pourrons contrôler la donnée et la passer à d'autres méthodes tout en pouvant réutiliser A plus tard. Notre code est devenu plus lisible en réduisant les `clone` et nous réduisons notre empreinte mémoire.

En poussant cette logique, cela nous permet aussi de rendre nos méthodes explicites.

```rust
fn manipulation(valeur: &String) -> &String {}
```

Cette signature de méthode rend **explicite** que nous ne pouvons que consulter notre valeur. Cela ne nous empêche pas, en cas de besoin, de créer une nouvelle instance à partir de cette référence en la clonant. Nous avons aussi explicité que notre méthode ne retournera qu'une référence à une String.

## Données et responsabilité

Le borrow checker nous oblige à réfléchir à la manière dont notre donnée va circuler dans notre application.

Dans mes tests et projets personnels, quand je veux aller vite, je suis ce que me dit le compilateur. Utiliser une référence (`&`) par-ci, faire un petit `clone` par là.

Le compilateur (et `rust-analyzer`) est mon meilleur ami et je le suis souvent aveuglément en début d'implémentation. Mais, toujours à la manière des `unwrap`, mon code explicitera ma gestion des données, même si elle est brutale ou naïve, que ce soit avec un abus de `clone` ou `&`.

Ainsi à chaque fois que je lirais mon code, je verrais directement les possibilités et les risques associés a telle ou telle manipulation.

Viendra ensuite le premier blocage, le point où je serai forcé de réfléchir à mes données :

- Qui doit avoir quoi ?
- Est-il nécessaire de cloner ?
- Quand est-ce que je transfère la propriété ?

Petit à petit, en rationalisant mon code et la gestion de mes données, je vais aussi expliciter ma conception. La signature même de mes API explicitera aux développeurs et aux consommateurs ce qu'il peut advenir de la donnée et ce qu'on pourra faire de la donnée produite.

## Ressources diverses

- [Understanding Ownership](https://doc.rust-lang.org/stable/book/ch04-00-understanding-ownership.html#understanding-ownership)
