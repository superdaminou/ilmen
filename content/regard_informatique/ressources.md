---
title: Rationalisation et économie de ressources
draft: false
tags:
  - informatique
  - reflexion
---

> [!info]
> Nous avons eu une forte amélioration dans nos gestion des ressources mais il reste encore beaucoup de sujets à discuter et améliorer

## Consommations illimités

L'informatique et le web ont énormément évolué ainsi que nos pratiques et nos usages. Tout cet écosystème se base sur un ensemble de ressources matériel. Des terres rares pour les processeurs, de l'eau pour refroidir les serveurs et tout ce qui peut nous permettre de produire de l'énergie pour faire tourner ces derniers.

Nous ne savons pas comment les technologies et nos pratiques vont continuer d'évoluer. Malgré ce qui semble être un léger ralentissement global, nous continuons à avoir des réseaux plus performant, de plus gros disques durs et des processeurs plus rapide, mais aussi aux prix de consommations plus élevées.

Nous avons moins besoin de nous soucier de la performance de nos algorithmes et le place que prends nos données. C'est presque devenu une donnée secondaire. J'aime bien le maxime "make it work, make it right, make it fast" mais la performance vient bien à la fin.

Alors qu'il y a 50 ans, c'était le critère primaire. Lorsque l'on envoie une fusée sur la Lune, la limite de notre programme n'est pas que financières. Elle est physique. Nous sommes limités dans notre capacité à embarquer de la complexité par les contraintes d'espace et de poids.

Et nous avons perdu le physique à la maison. Nous n'en avons plus besoin et n'en voulons plus, en tout cas plus chez nous. Nous consommons des quantités énormes de données pour multitude d'usages : vidéo, son, texte et [[abstraction|tout ce qui peut aller avec]].

Ces usages pouvant aller de conférences scientifiques ou d'échanges entre dirigeants à des publicités pour des sièges de toilettes en passant par appels entre deux amis qui sont a deux extrémités du monde ou des jeux vidéo.

Cependant, ces dernières années voient apparaît des nouveaux sujets sur [[evol_web|l'architecture du WEB]] et son rapport aux ressources. La décentralisation et L'architecture orienté cloud ont fait naître des réflexions sur leurs organisations et consommation.

## Rationalisation

Avec des concepts tels que "Resource On demand" ou le paiement à l'usage nous somme passé de serveurs de quelques Giga jamais totalement utilisé et traînant dans les placards informatique à une mise à disposition des ressources adaptées à notre juste besoin et mutualisée.

N'ayant plus besoin de physiques, nous avons confié la responsabilité des données à des entités. Spotify à toute ma bibliothèque musicale, soit plus de 149h de musiques à ce jour. Netflix s'occupe de la gestion des séries et films que nous consommons le soir.

Ces acteurs et les grands groupes technologiques ont donc été très directement confrontés au besoin de rationaliser leurs usages. Il me suffit de payer pour avoir plus d'espace de stockage sur mon drive, mais cela se traduit tout de même en disque dur quelque part dans le monde. La console dont je n'ai pas besoin grâce à shadow existe quand même.

En tant que développeur, nous n'avons pas eu beaucoup de choix non plus. Un disque dur acheté ne changera pas de prix que je mette de la donnée ou non dedans. Mon hébergeur n'arrêtera pas de facturer mes 2To parce que j'ai rien mis dessus.

Une partie de cette rationalisation fonctionne donc en partie sur la formulation du besoin. De combien de calculs, j'ai besoin pour faire tourner mon business ? Suis-je obligé de payer cet environnement que personne n'utilise ?

Malgré cette expression de besoin, il reste toujours des utilisateurs qui ne consommeront pas leurs Go offerts ou des entreprises qui ne regardent pas si bien que ça leurs factures ou que je n'aurais pas toujours un flux constant d'utilisateurs.

Une rationalisation technologique c'est aussi opéré. Les charges sont réparties en fonction des ressources disponibles et sont partagées entre une multitude de services. L'orientation Cloud et microservices ont fait émerger des notions comme les lambdas dont l'usage et la facturation se fait au nombre d'appels.

Sur des cluster Kubernetes nous pouvons définir des ressources minimales et maximales permettant de répartir plus efficacement nos applications sur les nœuds et optimisés l'usage total des ressources.

## Prospection

Un changement majeur de ces dernières années est la démocratisation des IA, accessibles sous plusieurs formes de grâce en partie à une mise à disposition accrue de ressource et des progrès techniques et conceptuel rapides.

Cependant la consommation engendrée et son augmentation est déjà critiquée et remise en cause et sera un enjeu de taille dans l'organisation du WEB dans les prochaines années.

Dans un enjeu de crise climatique, la consommation générale est questionnée. Nous recyclons et limitons le gaspillage alimentaire par mise en œuvre concrète et de la sensibilisation. Nous introduisons un ensemble de dispositifs légaux permettant de réguler l'usage de ressources dans diverses industries.

Je ne vois pas de raison que l'informatique et notamment sa pratique pour les concepteurs n'évolue pas en ce sens. Des termes comme "éco-conceptions" font leurs entrées dans le domaine mais la définition semble rester encore très floue en plus de se limiter un aspect purement technique sans forcément interroger le besoin sous-jacent.

Certaines de ces questions sont strictement démocratiques et nécessite l'avis éclairé de l'ensemble de la population sur les questions amenant à notre usage des ressources dans le domaine de l'informatique

Ces 20 dernières années ont vu une métamorphose assez spectaculaire de notre domaine et de l'organisation du WEB. Les années à venir vont sans doute être l'enjeu de [[science_social|nouveaux conflits politique et idéologique]] qui vont structurer cet espace et dont en tant que travailleurs et participant actif de cet écosystème nous devons nous emparer.

## Ressources diverses

- [Etats-Unis: Il escroque 122 millions de dollars à Google et Facebook et risque 30 ans de prison](https://www.20minutes.fr/high-tech/2482723-20190327-etats-unis-escroque-122-millions-dollars-google-facebook-risque-30-ans-prison)
- [Paradoxe de Jevons](https://fr.wikipedia.org/wiki/Paradoxe_de_Jevons)
- [Water, a growing source of global tension](https://www.polytechnique-insights.com/en/columns/planet/water-a-growing-source-of-tension/)
- [# Artificial intelligence is using a growing amount of resources](https://www.tomorrow.city/artificial-intelligence-is-using-a-growing-number-of-resources/)
- [# PoS vs PoW sur Ethereum : Les avantages de la preuve d’enjeu](https://www.cointribune.com/pos-vs-pow-sur-ethereum-les-avantages-de-la-preuve-denjeu/)
