---
title: Dette technique et Entropie des Systèmes
tags:
  - informatique
  - vulgarisation
---

Nous entendons souvent parler de dette technique au sein de notre métier et nous catégorisons à peu près tout ce qui ressemble à du code legacy ou du mauvais code comme en faisant partie.

Mais d’où vient ce concept et quel rapport avec l’entropie de nos systèmes ? D’ailleurs qu’est ce que l’entropie d’un système ?

Et encore plus important, comment pouvons nous nous emparer de ces concepts pour améliorer la qualité de nos productions techniques et en faire des objets durables dans le temps ?

## Dette Technique

### Concept

Le concept de dette technique a été théorisé par [Ward Cunningham](https://fr.wikipedia.org/wiki/Ward_Cunningham) en 1992. A cette époque Cunningham travaillait pour une entreprise de la finance, un beau jour il a eu besoin d’expliquer à son responsable métier la nécessité de prendre du temps pour « nettoyer » le code existant avant de pouvoir mettre en place une nouvelle fonctionnalité. Assez naturellement et pour pouvoir communiquer avec ses responsables du monde de la finance, le terme de dette a été utilisé.

Il va permettre de définir l’achat d’un gain à court terme (ex : évolution critique/urgente pour le business) mais en introduisant une notion d’intérêt (baisse de qualité du code). Si les intérêts ne sont pas remboursés, ils s’accumulent jusqu’à ne plus pouvoir être remboursables, cela peut s’apparenter au concept de subprimes. La dette technique représente ce choix et les conséquences qui y sont associées.

La conception de Ward Cunningham définit la dette technique comme étant un écart entre le système (base de code) et le métier. Lors de la mise en place d’une application et durant son évolution plusieurs facteurs (sur lesquels nous reviendrons) peuvent créer un écart entre la conception technique de l’application et son adéquation vis à vis du métier qu’elle est censée représenter.

A ce jour certains outils existent pour essayer de mesurer le coût de la dette technique. Ce coût étant défini par le temps nécessaire pour réaligner notre système sur notre métier. Cast, par exemple, a évalué à un coût moyen de 3,61$ par ligne de code. Son analyse se base sur plusieurs indicateurs : complexité, couverture, duplication, conformité, code mort et taux de commentaire.

![[static/cout_dette_tech.jpg]]
*Répartition* *de la dette technique selon CAST*

Bien évidemment ce ne sont que des indicateurs et une analyse plus fine de leurs pertinences est nécessaire avant d’assurer avec certitude que nous avons bien à faire de la dette technique au sens de Cunningham.

La dette générée se doit d’être remboursée dès que possible et selon le choix de l’équipe technique.

### Création de la dette

Mais comment fait-on pour créer de la Dette Technique ? Comme nous avons pu l’énoncer, la dette technique représente l’écart que peuvent avoir nos systèmes vis à vis du métier qu’ils doivent représenter. Cela peut se faire de façon volontaire ou non et de façon risquée ou prudente.

**Prudent et volontaire** : Cette configuration apparait souvent par des contraintes externes. Imaginons une évolution à réaliser avec une deadline de deux semaines. Dans un fonctionnement que nous qualifierons de « classique » nous fonctionnerons de cette façon : Conception → Développement → Livraison (j’omets volontairement la notion de test à ce niveau). Nous pourrions donc imaginer que sur ces deux semaines nous passions une semaine sur la conception de cette évolution et la deuxième sur le développement « pur ». Seulement au milieu de la deuxième semaine (phase de développement) nous apercevons une problématique que nous n’eussions pas détectée lors de la conception. Nous pourrions prendre du temps pour peaufiner la conception en prenant en compte cette nouvelle contrainte mais l’évolution doit absolument être livrée à la fin de la deuxième semaine pour le lancement qui est critique. Nous allons donc choisir de finir le développement pour la fin de cette deuxième semaine en baissant volontairement la qualité de notre code pour répondre à un besoin urgent et important.

Le fait de faire ce choix de façon consciente et en ayant conscience des impacts possibles permet de limiter le poids que pourrait avoir cette baisse de qualité de code sur nos futurs développements et nous permettra de plus rapidement rembourser cette dette. Nous faisons un emprunt en ayant conscience du montant des intérêts.

**Risqué et volontaire** : Pour ce cas-là nous prendrons l’exemple d’une urgence en production critique pour le business. L’anomalie doit être résolue le plus rapidement possible pour éviter un impact trop considérable sur le business. Une décision va être de ne pas réaliser de conception et de développer à tout va et de livrer dès que possible. N’ayant pas eu le temps d’effectuer de conception, nous n’avons pas de vision sur la pertinence du code ajouté vis à vis du métier. Nous avons donc très peu de vision sur le poids de la dette que nous venons de créer. Nous venons de faire un emprunt mais sans vision claire sur la grandeur des intérêts.

**Prudent et involontaire** : Ce contexte pourrait plutôt s’exprimer dans le temps. Nous pourrions imaginer un nouvel arrivant sur le projet à qui il est demandé de réaliser une évolution. Deux semaines pour la réaliser, une semaine de conception et une semaine de développement. Malgré toute la bonne foi de notre développeur, son arrivée récente sur le projet ne lui permettra sûrement pas d’avoir la vision nécessaire sur le métier pour proposer une conception adaptée et donc des développements associés qui seront alignés. Cependant sa vigilance (notamment sur les tests) lui permettra sûrement de limiter autant que possible le poids de cette dette, et au fur et à mesure que ses connaissances augmenteront il sera en mesure de visualiser la portée de la dette technique, de l’écart entre son système et son métier et donc d’y remédier.

**Risqué et involontaire** : Ce cas-là est sûrement le plus dangereux et consisterait, toujours dans le contexte d’une évolution sur deux semaines à dire, « Hum je ne comprends pas trop comment ce besoin s’inscrit dans mon métier mais tant pis allons coder ». Le problème qui me semble évident étant que nous aurons un code qui n’aura sûrement aucune cohérence vis à vis du reste du système et du métier et dont la mesure risque d’être fortement compliquée. Cette évolution risque aussi d’être réalisée sans garde-fous qui pourraient empêcher de plus facilement revenir sur cette évolution.

**Une bonne dette technique est une dette choisie, pesée et contractualisée.**

### Impact

Maintenant que nous avons bien créé toute notre dette technique que va-t-il se passer ? Est-ce que c’est si grave ?

Une dette technique non traitée aura tendance à en créer d’autres plus importantes : si nous revenons sur notre exemple, nous avons réalisé notre évolution dans les deux semaines imparties (HOURA !) mais nous avons, pour cela, introduit de la dette technique. Pas le temps de se reposer le client à une nouvelle demande d’évolution à réaliser pour dans deux semaines et qui ne peut pas être retardée. De plus cette évolution se base sur celle précédemment réalisée ! Nous nous retrouvons donc dans la même situation mais avec le poids d’une dette déjà existante. Les choix que nous ferons seront donc soumis à cette contrainte et nous forcerons sûrement à tordre encore plus notre système pour pouvoir répondre à l’attente du client dans les temps. Nous allons créer une dette sur une autre déjà existante. Et cette situation ne semble pas tendre vers une augmentation linéaire.

Retournons à notre première évolution. Notre système est bien aligné avec notre métier : nous sommes dans des conditions optimales. Suite aux choix que nous avons effectués pour répondre aux besoins nous avons introduit une dette que nous estimons à deux jours (deux jours de travail nécessaires pour réaligner notre système). Si nous redéveloppons par-dessus nous serons donc des conditions qui ne seront pas optimales.

Nous allons sûrement devoir tordre un peu plus le modèle, dupliquer un peu plus de code, etc… et au final nous aurons rajouté une dette que nous estimerons, pour le besoin de l’exercice, à six jours. Nous avons donc réussi avec une nouvelle évolution de même acabit à tripler notre dette !

Cet exemple est volontairement exagéré et je n’ai pas de chiffres précis à fournir car ils dépendront du contexte. Si nous imaginons une nouvelle demande sur deux semaines mais pour un module totalement indépendant et sur lequel aucune autre évolution n’est prévue (prenons un POC par exemple) l’introduction de dette ne serait pas un problème car elle n’aurait aucun impact sur les développements futurs ca étant non existant. Mais cela demande une certaine certitude du but de l’évolution/application.

A partir de là, nous allons avoir une succession de problèmes. Comme nous le pressentons déjà, le fait d’augmenter la dette va aussi augmenter la complexité de notre code. Tordre un peu plus le modèle, dupliquer etc… tant d’éléments qui vont rendre les interventions futures de plus en plus difficiles.

Et des interventions de plus en longues, car là où il nous fallait deux semaines pour développer notre évolution il nous en faut désormais trois et puis bientôt cinq et ainsi de suite. Malheureusement (ou heureusement tout dépend du point de vue) tous ces développements ont un coût. Ce coût absorbé par notre client qui, s’il n’a pas connaissance de la dette et que nous n’avons pas négocié son remboursement, risque de le contrarier. En effet, comment se fait-il que pour une demande d’évolution similaire nous prenions désormais trois fois plus de temps et donc d’argent ? Tant de questions qui risquent de dégrader les relations avec notre client et nous mener petit à petit vers un point de non-retour.

## Entropie des Systèmes

### Concept

« L’entropie désigne la tendance naturelle d’un système à se désorganiser » C’est sur cette simple définition que nous allons travailler. Nous intervenons tous sur des systèmes, qui se modélisent de différentes façons, soumis à cette loi. L’entropie va donc décrire la rapidité avec laquelle notre code va se détériorer de lui- même avec le temps qui passe. J’aime faire le parallèle avec l’image des écouteurs. Si vous rangez vos écouteurs dans votre poche (et qu’ils ont encore des fils), vous aurez beau les ranger proprement ils finiront quasi-systématiquement (dépendant du temps passé) par sortir emmêlés.

Mais bien que cette tendance soit naturelle nous pouvons la maitriser.

![[static/entropie_naturel.jpg]]
_L’entropie au naturel_

### Evolution de l’entropie

Comme nous venons de le voir nous avons affaire à un phénomène naturel que nous ne pouvons donc pas éviter. Mais nous pouvons le comprendre.

Tout d’abord revenons un peu sur la complexité. Nous pouvons en distinguer trois types (basés sur la conception d’A. Lemaire)

- La complexité essentielle : qui va définir le cœur de notre métier.
- La complexité obligatoire : qui va être due à une nécessité pour répondre à une contrainte fondamentale du système
- La complexité accidentelle : qui va résulter de l’entropie, de mauvaise pratique, .

Pour résumer : Si vous ne voulez pas ajouter de complexité, n’écrivez plus de code.

« Oui mais le client ne va pas accepter que je n’écrive plus de code ». En effet, cela va être compliqué à justifier. Mais nous pouvons anticiper et contrôler son évolution.

Plus un système grandira plus il aura tendance à se désorganiser et encore plus s’il est déjà abimé.

Imaginons deux immeubles l’un à côté de l’autre à un moment précis. Le premier immeuble A est bien entretenu et toutes les fenêtres en bon état. Le deuxième immeuble B, lui, par contre est délabré avec plusieurs fenêtres cassées. Si nous laissons passer un peu de temps et que nous revenons voir nos immeubles, il y a fort à parier que l’immeuble B ait encore plus de fenêtres cassées alors que l’immeuble A aura toujours toutes ses fenêtres en état.

Cette image illustre le fait que le désordre amène plus de désordre. Et de la même façon, si nous ne prenons pas soin de notre système et nous ne réparons pas nos fenêtres, alors d’autres personnes casseront des fenêtres et d’ici peu notre système ne sera plus qu’une ruine. De plus, plus notre système grandira plus l’entropie évoluera vite. Alors anticipons.

### Impact de l’équipe

Notre façon de fonctionner en équipe, peut-elle peut nous aider ? Ou non ?

Je pense personnellement que la culture de l’équipe sera un des facteurs les plus importants.

On pourrait commencer par les conventions. Sur un projet avec quatre développeurs sans structuration nous nous retrouverons rapidement avec quatre conventions de codes différentes. Cela va entrainer des confusions, une lecture plus compliquée et risque très fortement d’augmenter notre complexité accidentelle. De plus, si une nouvelle personne rejoint l’équipe, il y a de fortes chances que nous nous retrouvions avec encore une nouvelle convention. Et de cinq.

La structuration de l’équipe est donc importante : le fait d’avoir une équipe constituée de telle façon à couvrir tout le spectre de notre système (développeur, tech-lead/architecte, fonctionnel, … ) permettra d’avoir  plus facilement une vue d’ensemble de notre projet et donc des problématiques liées. Attention je ne parle pas de segmenter notre équipe en plusieurs parties chacune responsable de son domaine mais d’avoir un pool de compétences variées qui permettra une transmission facilitée.

Si nous allons sur une application historique, nous ne mettons que des développeurs juniors, ils n’auront pas la connaissance nécessaire pour comprendre l’alignement actuel (ou non) de leurs systèmes par rapport au métier, le risque d’augmenter la complexité accidentelle est fortement accru. Car ils n’auront tout simplement pas la connaissance du métier, comment voulons-nous, de là, qu’ils soient capables d’aligner un système ?

La documentation et l’abstraction seront aussi un point essentiel. Avoir un support permettant d’expliquer les choix qui ont été fait permettra de mieux prendre en main notre système et permettra de limiter les risques de mauvaises interventions.

La revue de code est une méthode qui permettra de mettre à plat les pratiques et les problèmes en les partageants. En nous mettant tous ensemble face à nos problèmes nous pourront trouver des solutions communes. Comment se fait-il que tu utilises tel naming et moi tel autre ? Profitons d’être ensemble pour unifier notre pratique. Ce bout de code n’est pas compréhensible ? Partageons la connaissance et travaillons ensemble pour unifier notre compréhension de notre système.

Après tout cela nous aurons sûrement identifié des points faibles dans nos façons de faire. Mettons à jour nos process. Est-ce que cette réunion est utile ? Est-ce que l’on peut fonctionner autrement ? Qu’est ce qui nous correspond ? Tant de questions à se poser pour adapter notre travail d’équipe et améliorer nos process pour optimiser nos développements.

### Impact du développeur

Et moi devant mon clavier ? Comment je fais évoluer l’entropie de mon application ? Je pense que ce sont des situations auxquelles nous sommes plus confrontés quand nous sommes juniors. Mais qui découlent beaucoup des points précédents.

Cela commence tout simplement par la non-connaissance de nos sujets, de nos métiers et nos architectures.

Qui est tout à fait normal en arrivant mais qui risque d’augmenter la complexité que nous introduirons dans notre système. Si nous ne comprenons pas pourquoi notre système est dans tel état, pourquoi telle technologie ou architecture plutôt qu’une autre, nous ne pourrons pas comprendre la cohérence (ou non) de notre système. C’est en général à ce point que l’accompagnement, ou à défaut la documentation, joue un rôle crucial. Car cela donnera plus rapidement l’opportunité à notre développeur junior d’aborder les tenants et aboutissants de notre système ainsi que du métier qu’il représente et faciliter son intervention dessus.

Cela pourrait aussi donner une tendance à la non-intervention dû à une non-compréhension. Pour évoquer mon cas, je me suis déjà retrouvé confronté à des morceaux de code me paraissant fortement complexes et potentiellement refactorables. Mais ma non-connaissance sur le moment des contraintes, de la raison de l’implémentation et la non-existence de tests me permettant d’agir avec prudence m’ont parfois poussé à laisser un bout de code en l’état. Or, comme nous l’avons vu, plus nous laissons un système dégradé plus il se dégradera vite.

En ne respectant pas de bonnes pratiques, ou tout du moins en ne remettant pas en cause nos pratiques actuelles, nous avons de fortes chances d’introduire de la complexité. Si nous prenons un contexte de POO alors le respect autant que possible de SOLID nous permettra d’avoir un système plus robuste au changement et nous permettra de plus facilement revenir sur nos développements au fur et à mesure que notre compréhension évoluera.

## Axe de résolution

### Que faire ?

Alors comment pouvons-nous contrer tout cela ? Quels sont nos moyens d’actions pour limiter la casse ? Je vais vous proposer les axes qui me semblent les plus importants.

Tout d’abord le **TEST**, cette chose magnifique. Je ne saurais donner le nombre de papiers, articles et conférences qui mettent en avant cette pratique et les meilleures façons de le faire, mais ici nous nous pencherons plutôt sur son apport pour notre cas.

Le test va nous donner de la sécurité, de l’assurance et de la joie. Nous pouvons négocier notre dette technique, nous permettre d’accélérer un peu nos développements car nous aurons l’assurance que nos objectifs métier seront respectés. Avec cette assurance nous pourrons revenir sur notre code pour rembourser notre dette, nous pourrons travailler sur notre assainissement sans risque. De là, la peur que nous pourrions avoir à refactoriser un bout de code complexe pas très joli joli, devrait disparaitre. En effet pourquoi se priver de tout casser et tout refaire quand nous savons que notre résultat sera assuré par le passage des tests. Evidemment cela nécessite d’avoir une pratique correcte des tests que nous ne développerons pas ici.

Nous devons aussi nous assurer de stabiliser nos développements avant de continuer. Introduire de la dette pour répondre à un besoin : OUI, continuer de développer par-dessus : NON. Prenons du temps. Nos systèmes sont sensibles et doivent être entretenus. Une journée de consacrée à nettoyer ce que nous venons de produire nous économisera beaucoup de semaines de sueur et de pressions lorsqu’il faudra revenir dessus (pour un bug, une évolution ou autre).

**Comprenons** ce que nous faisons et pourquoi nous le faisons. Nous sommes là pour répondre à un besoin, nous devons absolument comprendre ce besoin pour apporter les solutions les plus logiques et adaptées. Le code pour le code oui dans le cadre de projet sans objectifs, d’innovation (même si cela peut se discuter car une innovation peut être portée par un objectif), mais cela reste mon avis personnel.

**Communiquons**. Je pense que nous travaillons dans un métier très sociable et qu’une bonne communication réglerait la plupart de nos soucis. Nous sommes en permanence en relation avec d’autres acteurs : management, collègue, client etc… Mettons en place les outils nécessaires pour dialoguer, comprenons les attentes des uns et des autres. Qui n’a pas déjà été confronté à des retours en arrière sur son code suite à une incompréhension de la problématique ? Des situations ou tout le monde sait très bien ce qu’il veut faire mais pas du tout ce que la personne d’à côté a en tête.

Et pour finir, je pense qu’il faut que nous prenions l’habitude de remettre en cause nos propres travaux et réalisations. Revenons sur ce que nous avons produit et identifions les erreurs, les choix que nous avons fait et tentons de voir si, avec du recul ces choix nous apparaissent toujours adaptés ou si d’autres possibilités auraient été envisageables et, au besoin, revenons directement dessus pour avoir un code plus robuste et ne pas laisser derrière nous des choses que nous pourrions regretter plus tard.

Une heure de dialogue sur nos objectifs partagés, les contraintes de chaque partie nous permettrons sûrement d’économiser des heures de remise à niveau et de retour en arrière.

### Que faire de ces concepts ?

Tout d’abord, essayons de les comprendre, de les appréhender, de voir comment ils s’appliquent dans nos contextes projet. Nous aurons différentes façons de s’y confronter. Un projet orienté grand public ne gérera sûrement pas sa dette de la même façon qu’un projet interne. Apprenons à nous positionner, en tant qu’acteur du projet, sur ces sujets.

Une fois que nous aurons assimilé ces concepts nous pourrons en parler. En parler avec nos équipes, avec notre management, nos clients etc … plus nous arriverons à avoir une base commune de connaissance plus nous serons en mesure de trouver et proposer des solutions qui répondront aux problèmes de tous les acteurs du projets (rentabilité, sécurité, stabilité, …).

Nos métiers, nos projets, nos quotidiens sont impactés par ces concepts. Ne nous laissons pas déborder par eux.
