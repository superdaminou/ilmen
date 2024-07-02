---
title: Transformation du WEB et de son architecture
draft: false
---

## Qu'est ce que le WEB ?

Le WEB fait partie de la [[definition|couche conceptuelles]] de l'informatique. Mis au point par **Tim Bernes-Lee** en 1990, c'est l'ensemble des concepts fondamentaux définissant la structure d'échanges entre plusieurs ordinateurs en se basant sur Internet. De ces concepts fondamentaux comme "document hypertexte" ou "navigateur", vont émerger de nouvelles [[norme_informatiques|normes et  nouveaux protocoles]], tel qu'HTTP, régissant l'organisation structurelle du WEB.

Trois éléments qui ressortent quand on parle de WEB vont être: les serveurs, les navigateurs et les normes.

## 90-2000

C'est le **WEB 1.0**. Les ordinateurs apparaissent et se démocratisent dans les maison mais leurs performances reste peu élevé. Le support physique est la règle, est les applications de ces années la sont:

- Winamp
- Emule
- Encarta
- Netscape et internet explorer

Orienté sur la lecture seul, ce sont surtout des serveurs répartie chez des entreprise et des particuliers qui héberge et mette à disposition de la données. On peut consulter les sites et s'abonner pour recevoir de l'informations. Les serveurs sont administré manuellement et les normes peut existantes.

C'est un espace d'expérimentation technique et de luttes pour imposer ces outils et ces codes.

On peut caractériser l'architecture du WEB de cette époque en 3 point :

- Des architectures globalement **monolithiques**
- Une responsabilité forte accordée aux **serveurs**
- Une administration des ressources **manuelle** et **centralisée**

## 2000-2010

Les ordinateurs sont plus puissant et se sont fortement démocratisé. On peut désormais faire plus de calcul plus rapidement et stocker beaucoup plus de chose.

On voit une forte augmentation de la charge accordée aux navigateurs. Jusqu'ici ayant une responsabilité très limitée de restitution d'HTML/CSS avec quelques animation JS, les navigateurs vont prendre une place de plus en plus importante dans la structure du WEB.

Avec l'apparition de Firefox (2004) et Chrome (2008) c'est une période de forte amélioration des performance et de standardisation des navigateurs. Ajax apparaît en 2005 et cette période va voir l'émergence de librairie Front comme Jquery, ou encore l'utilisation du plugin Flash qui permettait, entre autre, de faire tourner de petits jeux directement dans le navigateur. L'interactivité avec les navigateurs et le échanges avec le serveurs augmente très fortement. C'est ce qu'on appelle le **WEB 2.0**.

C'est aussi l'arrivé de l'Iphone qui, combiné à l'essor de la 3g, va lancer smartphone et nous faire repenser la façon dont nous concevons les interfaces et les applications WEB. Notamment à travers des concept comme **responsive**.

Cette période se caractérise aussi par une décentralisation de plus en plus forte de notre code et de nos processus notamment à travers des outils tels que Github (2008) ou Gitlab (2011) ou d'hébergeur qui propose tout un ensemble de service clé en main tel que Heroku (2007).

Nous allons petits a petits créé un ensemble d'outils permettant de rationnaliser la conception et de permettre une utilisation quasi similaire entre un ordinateurs et un smartphone.

L'augmentation des performances des navigateurs et machines permet de proposer des expériences plus complexes avec des animations ou du contenu média plus importants.

## 2010-2020

Jusqu'ici avec une architecture plutôt monolithique (illustré avec le MVC), le début des années 2010 est marquée par la popularisation de l'architecture orientée micro services et la mise en avant de concept tel que REST.

On voit une multiplication de service avec des responsabilités dédiées et dont le traitement sera de plus en plus cantonné à des opérations simples.

Nous pouvons le constater avec les trends google où le terme de micro-service et les framework populaire (NodeJs, RoR, AngularJs) voient leur popularité très fortement augmenter à partir de 2010/2013.

Tout cela va aussi avec une industrialisation et rationalisation de plus en forte de nos manières de travailler.
Nous transférons de plus en plus de données et hébergeons de moins en moins notre code et nos applications tout en nous appuyant sur des outils et librairies mis a disposition par la communauté.
La notion de CLOUD explose et nous avons de moins en besoin d'avoir nos propres machines et de développer nos propres outils.

C'est aussi l'apparition sur la place publique de la blockchain notamment avec la très forte popularisation du Bitcoin, poussant jusqu'au bout le concept de décentralisation en demandant aux acteurs du réseaux de valider les opérations et plus seulement un serveur central.
Avec la popularisation de cette technologie on voit aussi augmentation des sujets lié à la consommation. Chaque validation basée sur la preuve de travail nécessitant de fournir une certaine puissance de calcul.

Si on reprends nos caractéristique du début :

- Des architectures moins monolithiques et plus orienté service
- Une responsabilité distribué entre navigateur et serveurs
- Une administration des ressources décentralisé et rationnalisé

## 2020-

Cette décentralisation de plus en plus forte ne va pas s’arrêter au code ou aux processus mais va s'étendre aussi aux ressources. Notre utilisation et besoin grandissant oriente encore notre architecture avec la démocratisation du cloud. Nous passons petit à petit de serveurs administrés manuellement, représenté par des métiers comme d'Admin Sys ou Database administrator, à des stratégies dites de "resources on-demand" et de délégation de l'infrastructure a des tierces.
Nous pouvons l'observer à travers la démocratisation de terme tel que Saas, Pass ou Iass. Nous déléguons désormais l'administration de nos infrastructures ainsi que de nos ressources à des entité externe (Microsoft, Amazon, Google).

Par exemple : nous transférons du code sur Github qui déclenchera un ensemble de pipeline téléchargeant, construisant et envoyant des images docker qui seront automatiquement répercuté et déployées dans nos infrastructure clusterisé qui alors (re)créeront des stockage, base de données et serveurs en fonction de la configuration et des limites (technique mais aussi financière) que nous avons définis.
Les ressources accordées seront mises à disposition en fonction de la demande.

Nous parlons désormais de Web 3.0 qui semble s'orienter sur une utilisation de plus en plus forte de la décentralisation. Nous avons pu l'observer notamment avec la blockchain qui a suscité beaucoup de questions sur son utilisation. Néanmoins ce domaine voit de nombreux changement rapide et s'adapte aussi à ses critiques. Nous pouvons prendre comme exemple Ethereum qui passe désormais sur une stratégie de de "Proof-of-stake" qui réduit fortement la consommation d'énergie.

La blockchain a émergé dans les secteurs plutôt financiers avec notamment les crypto monnaies et étant désormais moins prisé des influenceurs et scam en tout genre, semble s'orienter vers des projets de certification, de sécurité et de traçabilité.

Pour finir il impossible de ne pas évoquer la forte croissance de l'IA dans le WEB, que ce soit a travers des services comme ChatGpt, des IA influenceurs/influenceuses, des site d'information et blog rédigé par des IA sans compter tout la question autour de la génération d'image.

Quelle sera l'orientation et l'organisation du WEB dans le futur ? Et quel rapport avec les ressources naturelle ? Il est difficile de répondre à cette question, et cela va être un enjeu de débats internes et externes.

## Ressource Diverses

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
