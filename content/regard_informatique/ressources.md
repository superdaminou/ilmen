---
title: Informatique et organisation des ressources
draft: false
tags:
  - informatique
  - reflexion
---

> [!info] TL;DR
> Nous avons eu une forte amélioration dans nos gestion des ressources mais il reste encore beaucoup de sujets à discuter et améliorer. Et des choix de société à organiser.

## Consommations illimitées

L'informatique et le web ont énormément évolué ainsi que nos pratiques et nos usages. Tout cet écosystème se base sur un ensemble de ressources matériel. Des terres rares pour les processeurs, de l'eau pour refroidir les serveurs et tout ce qui peut nous permettre de produire de l'énergie pour faire tourner ces derniers.

Nous ne savons pas comment les [[materiel_technique|technologies]] et nos pratiques vont continuer d'évoluer. Malgré ce qui semble être un léger ralentissement global, nous continuons à avoir des réseaux plus performants, de plus gros disques durs et des processeurs plus rapides, mais ce n'est pas pour autant que la consommation générale diminue.

Nous avons moins besoin de nous soucier de la performance de nos algorithmes et le place que prend nos données. C'est presque devenu une donnée secondaire. J'aime bien la maxime "make it work, make it right, make it fast" mais la performance vient bien à la fin.

Alors qu'il y a 50 ans, c'était un des critères les plus importants.

Lorsque l'on envoie une fusée sur la Lune, la limite de notre programme n'est pas que financière. Elle est aussi physique. Nous sommes limités dans notre capacité à embarquer de la complexité par des contraintes d'espace et de poids.

Et nous avons perdu le physique à la maison. Nous n'en avons plus besoin et n'en voulons plus, en tout cas plus chez nous. Nous consommons des quantités énormes de données et d'opération pour une multitude d'usages : vidéo, son, texte et [[abstraction|tout ce qui peut aller avec]].

Ces usages sont très diversifiés:

- conférences scientifiques
- échanges entre dirigeants
- publicités pour des sièges de toilettes
- appels entre deux amis qui sont à deux extrémités du monde
- jeux vidéo
- ...

Cependant, ces dernières années voient apparaître des nouveaux sujets sur [[evol_web|l'architecture du WEB]] et son rapport aux ressources. La décentralisation et l'architecture orientée cloud ont fait naître des réflexions sur leurs organisations et consommation.

## Rationalisation

Avec des concepts tels que "Resource On demand" ou le paiement à l'usage nous sommes passé de serveurs de quelques Gigas jamais totalement utilisé et traînant dans les placards informatique à une mise à disposition des ressources censé être adapté à notre juste besoin et mutualisée.

N'ayant plus besoin de physiques, nous avons confié la responsabilité des données à des entités. Spotify a toute ma bibliothèque musicale, soit plus de 149h de musiques à ce jour. Netflix s'occupe de la gestion des séries et films que nous consommons le soir.

Ces acteurs et les grands groupes technologiques ont donc été très directement confrontés au besoin de rationaliser leurs usages. Il me suffit de payer pour avoir plus d'espace de stockage sur mon drive, mais cela se traduit tout de même en disque dur quelque part dans le monde. La console qui n'est pas dans mon salon grâce à shadow existe quand même.

En tant que développeur, nous n'avons pas eu beaucoup de choix non plus. Un disque dur acheté ne changera pas de prix que je mette de la donnée ou non dedans. Mon hébergeur n'arrêtera pas de facturer mes 2To parce que je n'ai rien mis dessus.

Une partie de cette rationalisation fonctionne donc en partie sur la formulation du besoin. De combien de calculs, j'ai besoin pour faire tourner mon business ? Suis-je obligé de payer cet environnement que personne n'utilise ?

Malgré cette expression de besoin, il reste toujours des utilisateurs qui ne consommeront pas leurs Go offerts ou des entreprises qui ne regardent pas si bien que ça leurs factures ou que je n'aurais pas toujours un flux constant d'utilisateurs.

Une rationalisation technologique c'est aussi opéré. Les charges sont réparties en fonction des ressources disponibles et sont partagées entre une multitude de services. L'orientation Cloud et microservices ont fait émerger des notions comme les lambdas dont l'usage et la facturation se fait au nombre d'appels.

Sur des cluster Kubernetes nous pouvons définir des ressources minimales et maximales permettant de répartir plus efficacement nos applications sur les nœuds et optimiser l'usage total des ressources.

## Prospection

Un changement majeur de ces dernières années est la démocratisation des IA, accessibles sous plusieurs formes de grâce en partie à une mise à disposition accrue de ressource et des progrès techniques et conceptuels rapides.

Cependant, la consommation engendrée et son augmentation sont déjà critiquée et remise en cause et sera un enjeu de taille dans l'organisation du WEB dans les prochaines années.

Dans un enjeu de crise climatique, la consommation générale est questionnée. Nous recyclons et limitons le gaspillage alimentaire par des mises en œuvre concrète et de la sensibilisation. Nous introduisons un ensemble de dispositifs légaux permettant de réguler l'usage de ressources dans diverses industries.

Je ne vois aucune raison pour que l'informatique et notamment sa pratique pour les concepteurs n'évolue pas en ce sens. Des termes comme "éco-conceptions" font leurs entrées dans le domaine et commencent à être intégré dans les propositions comme critères différenciant.

Certaines de ces questions sont strictement démocratiques et nécessitent des débats de qualité et accessible à la population particulièrement sur les questions en lien avec notre usage des ressources dans le domaine de l'informatique.

Ces 20 dernières années ont vu une métamorphose assez spectaculaire de notre domaine et de l'organisation du WEB. Les années à venir vont sans doute être l'enjeu de [[science_social|nouveaux conflits politique et idéologique]] qui vont structurer cet espace et dont en tant que travailleurs et participant actif de cet écosystème, nous devons nous emparer.

## Ressources diverses

- [Etats-Unis: Il escroque 122 millions de dollars à Google et Facebook et risque 30 ans de prison](https://www.20minutes.fr/high-tech/2482723-20190327-etats-unis-escroque-122-millions-dollars-google-facebook-risque-30-ans-prison)
- [Paradoxe de Jevons](https://fr.wikipedia.org/wiki/Paradoxe_de_Jevons)
- [Water, a growing source of global tension](https://www.polytechnique-insights.com/en/columns/planet/water-a-growing-source-of-tension/)
- [# Artificial intelligence is using a growing amount of resources](https://www.tomorrow.city/artificial-intelligence-is-using-a-growing-number-of-resources/)
- [# PoS vs PoW sur Ethereum : Les avantages de la preuve d’enjeu](https://www.cointribune.com/pos-vs-pow-sur-ethereum-les-avantages-de-la-preuve-denjeu/)
- [# Data centers, bitcoin... Cinq informations à retenir du rapport des Nations unies sur la pollution du secteur numérique](https://www.francetvinfo.fr/monde/environnement/data-centers-bitcoin-cinq-informations-a-retenir-sur-le-rapport-des-nations-unies-sur-la-pollution-du-secteur-numerique_6660027.html)
- [Shadow](https://shadow.tech/fr-FR)
- [# Référentiel général d'écoconception de services numériques (RGESN) - 2024](https://ecoresponsable.numerique.gouv.fr/publications/referentiel-general-ecoconception/)
