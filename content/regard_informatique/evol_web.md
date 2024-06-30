---
title: Transformation du WEB et de son architecture
draft: true
---

## Qu'est ce que le WEB ?

Le WEB fait partie de la [[definition|couche conceptuelles]] de l'informatique. Mis au point par Tim Bernes-Lee en 1990, c'est l'ensemble des concepts fondamentaux définissant la structure des échanges entre plusieurs ordinateurs en se basant sur Internet. De ces concepts fondamentaux comme "document hypertexte" ou "navigateur", vont émerger des normes et protocoles, comme HTTP, régissant l'organisation structurelle du WEB.

## 90-2000

C'est le WEB 1.0. Les ordinateurs apparaissent et se démocratisent dans les maison mais leurs performances reste peu élevé. Le support physique est la règle, est les applications de ces années la sont:

- Winamp
- Emule
- Encarta
- Netscape et internet explorer

Orienté sur la lecture seul, ce sont des serveurs répartie chez des entreprise et des particuliers qui héberge et mette à disposition de la données. On peut consulter les sites et s'abonner pour recevoir de l'informations. Les serveurs sont administré manuellement et les normes peut existantes.

On peut caractériser l'architecture du WEB à cette époque en 3 point :

- Des architectures globalement monolithiques
- Une responsabilité extrêmement forte accordée aux serveurs
- Une administration des ressources manuelle et centralisée

## 2000-2010

Le premier point est une augmentation de la charge accordée aux navigateurs. Jusqu'ici ayant une responsabilité très limitée de restitution d'HTML/CSS avec quelques animation JS, les navigateurs vont prendre une place de plus en plus importante.

Avec l'apparition de Firefox(2004) et Chrome(2008) c'est une période de forte amélioration des performance et de standardisation des navigateurs.

Le terme Ajax apparaît en 2005 et cette période va globalement voir l'émergence de framework Front tel que Jquery.

L'iphone va lancer la période du smartphone qui, avec l'essor du réseau 3G, va nous faire repenser la façon dont nous concevons les interfaces et les applications WEB.

## 2010-2020

Ce transfert de la responsabilité va orienter aussi l'architecture backend. Jusqu'ici avec une architecture plutôt monolithique (illustré avec le MVC), le début des années 2010 est marquée par la popularisation de l'architecture orientée micro-services.

On voit une multiplication de serveurs/service avec des responsabilités dédiées et dont le traitement sera de plus en plus cantonné au pur traitement/échange des représentation.

Nous pouvons le constater avec les trends google ou le terme de micro-service et les framework populaire (NodeJs, RoR, AngularJs) voient leur popularité très fortement augmenter à partir de 2010/2013.

Tout cela va aussi avec une industrialisation et rationalisation de plus en forte de nos manières de travailler.
Cela se caractérise par une décentralisation de plus en plus forte de notre code et de nos processus notamment à travers des outils tels que Github (2008) ou Gitlab (2011) ou d'hébergeur qui propose tout un ensemble de service tel que Heroku (2007).
Nous transférons de plus en plus de données et hébergeons de moins en moins notre code et nos applications tout en nous appuyant sur des outils et librairies mis a disposition par la communauté.

C'est aussi l'apparition sur la place publique de la blockchain notamment avec la très forte popularisation du Bitcoin, poussant jusqu'au bout le concept de décentralisation en demandant aux acteurs du réseaux de valider les opérations.
Avec la popularisation de cette technologie on voit aussi augmentation des sujets lié à la consommation. Chaque validation basée sur la preuve de travail nécessitant de fournir une certaine puissance de calcul.

## 2020-

Finis le téléchargement de nuit, nous consommons désormais en streaming.

Cette décentralisation de plus en plus forte ne va pas s’arrêter au code ou aux processus mais va s'étendre aussi aux ressources. Notre utilisation et besoin grandissant oriente encore notre architecture avec la démocratisation du cloud. Nous passons petit à petit de serveurs administrés manuellement, représenté par des métiers comme d'Admin Sys ou Database administrator, à des stratégies dites de "resources on-demand" et de délégation de l'infrastructure a des tierces.
Nous pouvons l'observer à travers la démocratisation de terme tel que Saas, Pass ou Iass. Nous déléguons désormais l'administration de nos infrastructures ainsi que de nos ressources à des entité externe (Microsoft, Amazon, Google).

Par exemple : nous transférons du code sur Github qui déclenchera un ensemble de pipeline téléchargeant, construisant et envoyant des images docker qui seront automatiquement répercuté et déployées dans nos infrastructure clusterisé qui alors (re)créeront des stockage, base de données et serveurs en fonction de la configuration et des limites (technique mais aussi financière) que nous avons définis.
Les ressources accordées seront mises à disposition en fonction de la demande.

Nous parlons désormais de Web 3.0 qui semble s'orienter sur une utilisation de plus en plus forte de la décentralisation. Nous avons pu l'observer notamment avec la blockchain qui a suscité beaucoup de questions sur son utilisation. Néanmoins ce domaine voit de nombreux changement rapide et s'adapte aussi à ses critiques. Nous pouvons prendre comme exemple Ethereum qui passe désormais sur une stratégie de de "Proof-of-stake" qui réduit fortement la consommation d'énergie.

La blockchain a émergé dans les secteurs plutôt financiers avec notamment les crypto monnaies et étant, désormais moins prisé des influenceurs et scam en tout genre, semble s'orienter vers des projets de certification, de sécurité et de traçabilité.

Pour finir il impossible de ne pas évoquer la forte croissance de l'IA dans le WEB, que ce soit a travers des services comme ChatGpt, des IA influenceurs/influenceuses, des site d'information et blog rédigé par des IA sans compter tout la question autour de la génération d'image.

Quelle sera l'orientation et l'organisation du WEB dans le futur ? Et quel rapport avec les ressources naturelle ? Il est difficile de répondre à cette question mais nous pouvons peut-être dégager quelques pistes de réflexions.

## Horizon et axe de réflexion

En tout premier lieu nous ne savons pas comment les technologies vont continuer d'évoluer, mais rien ne semble montrer une décélération dans notre consommation de données, d'échanges d'informations et de vitesse de traitement.

Cependant, ces dernières années voient apparaît des nouveaux sujets sur l'architecture du WEB et son rapport aux ressources.

Comme évoqué plus haut, la démocratisation de l'architecture orienté cloud a aussi vu apparaître des réflexions sur l'organisation et la consommation de nos ressources. Avec des concepts tel que "Resource On demand" ou le payement à l'usage nous somme passé de serveurs de quelques Giga jamais totalement utilisé et traînant dans les placard informatique à une mise à disposition des ressources adaptées à notre juste besoin et mutualisée.

Comme évoqué dans les notes, cette rationalisation n'amène pas en elle-même une amélioration de la performance de nos architectures. Nous avons juste moins besoin de nous en soucier.

Un dernier point qui sera sûrement crucial dans cette réflexion est la démocratisation des IA, accessibles sous plusieurs formes grâce en partie à la mise à disposition de ressource et les progrès techniques rapides. Cependant la consommation engendrée et son augmentation est déjà critiquée et remise en cause et sera un enjeu de taille dans l'organisation du WEB dans les prochaines années.

Ces 20 dernières années ont vu une métamorphose assez spectaculaire de notre domaine et de l'organisation du WEB. Les années à venir vont sans doute être l'enjeu de nouveaux conflits politique et idéologique qui vont structurer cet espace et dont en tant que travailleurs et participant actif de cet écosystème nous devons nous emparer.

Sources (non-exhaustif):

- https://next.ink/2956/lextraordinaire-evolution-stockage/
- https://www.mediametrie.fr/fr/retour-sur-20-ans-de-numerique-et-dinternet
- https://www.tomshardware.fr/de-la-carte-perforee-a-la-memoire-flash-la-grande-histoire-du-stockage-des-donnees/
- https://futuretimeline.net/data-trends/2050-future-internet-speed-predictions.htm
- https://www.zdnet.fr/blogs/infra-net/acces-internet-et-si-on-revenait-au-modem-56k-juste-pour-voir-39831970.htm
- https://www.cigref.fr/archives/histoire-cigref/blog/internet-25-ans-d-histoire-le-contexte-et-plus/
- https://www.tomorrow.city/artificial-intelligence-is-using-a-growing-number-of-resources/
- https://france.devoteam.com/paroles-dexperts/evolution-des-architectures/
- https://www.digitalocean.com/resources/article/cloud-capacity-planning
- https://medium.com/@jayphelps/backpressure-explained-the-flow-of-data-through-software-2350b3e77ce7
- https://www.polytechnique-insights.com/en/columns/planet/water-a-growing-source-of-tension/
- https://www.lebigdata.fr/heroku-definition
- https://www.lemonde.fr/economie/article/2016/04/18/michel-bauwens-un-reve-technocratique-totalitaire_4904154_3234.html
- https://fr.wikipedia.org/wiki/Paradoxe_de_Jevons
- https://tokensinvaders.com/blog/consensus-de-validation/
- https://www.cointribune.com/pos-vs-pow-sur-ethereum-les-avantages-de-la-preuve-denjeu/
