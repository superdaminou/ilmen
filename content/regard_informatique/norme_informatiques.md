---
title: Un problèmes de normes
draft: false
tags:
  - informatique
  - vulgarisation
---

> [!info] TL;DR
> La norme se pose par dessus l'abstraction, la fige et la diffuse. Ce faisant elle participe à l'évolution de l'informatique et organise une majeure partie de son fonctionnement.

## Comment s'organiser ?

C'est bon ! Tout le monde peut faire [[abstraction|l'abstraction]] qu'il ou elle veut !
Mais comment on fait pour s'y retrouver la dedans ?

### Détour par le langage

Supposons que j'écrive : "gra, tnty / lk".
Et que je vous dise que cela signifie : "j'adore le rhum".

Et si vous ne me croyez pas je vous invite à venir consulter le dictionnaire "parole de rhumerie" que j'ai écrit moi-même et qui n'existe qu'en un seul exemplaire chez moi !

Notre communication "habituelle" fonctionne sur la base de la modulation des sons et de représentations visuelles codifié comme l'alphabet.
Ces deux cas sont normé selon un ensemble de règles (phonétique/grammaire/etc...) qui permettent à une communauté partageant ces règle de ce comprendre facilement.

Bien que cela soit très utile pour que vous puissiez me lire, cela ne me permet pas de définir la façon dont vont communiquer deux ordinateurs entre eux.

### Le problème avec les ordinateurs

En effet ils ne possèdent ni oreilles, ni vue. Ils ne comprennent toujours que les [[abstraction|0 et les 1]].
Alors certes on a créé des structures pour faciliter les représentations, mais si chacun créé son dictionnaire dans son coin et ne le partage pas alors personne ne sera en capacité de comprendre ce qui a voulu être dit.

L'usage et la démocratisation de l'informatique arrivant, entre autre, à travers le web, il a fallu trouver de nouvelles façon de nous accorder, d'échanger des messages, des images ou de structurer nos application et nos interfaces.
Il a donc fallu mettre en place un ensemble de normes de la même façon que l'ASCII qui a permis de normer l'encodage des caractères.

Avec l'arrive d'internet de nouvelles questions vont se poser tel que : Comment formule-t-on un message ?

Un protocole a été proposé par Tim Berners-Lee en 1990 qui est toujours bien en vigueur aujourd'hui: **HTTP**.

## Normes et Protocoles

### Protocoles

Hyper Text Transfert Protocol est donc une façon de transmettre de la donnée sous une forme textuelle (et, si contenu supplémentaire, l'information nous permettant de la lire) qui est normée et qui assure que l'ensemble des messages transmis peuvent être compris et interprété si on la la connaissance de ces règles.

Il existe bien d'autres protocoles dont avez peut être entendu parler tel que :

- FTP
- TCP
- IP

Ces quelques exemples répondent à des besoins différents mais définissent tous la manières dont va être normalisé la données pour répondre à un besoin précis.

### Institutionnalisation

Plusieurs entité ont émergées pour formaliser les différentes normes et standards : IETF/W3C/...

Ces entités accompagnent la définition des normes et standards d'échanges (entre autres) sur le [[evol_web|web]]. De nouveaux standards émergent avec le temps et s'impose ou non dans nos pratiques. Par exemple le fondation OCI apparu en 2015 pour définir des standards autour des containers avec la montée dans les usages de Docker.

Tous ces standards vont être plus ou moins officiels et plus ou moins utilisés en fonction des domaines. Les domaines émergent auront évidemment des standards moins posés que les domaines historiques. Certains domaines ont aussi une multiplication des standards ce qui n'aide pas forcément à la mise en place d'un système résilient (Par exemple dans les SIG).

## Ressources diverses:

- [Plain Text • Dylan Beattie • GOTO 2023](https://www.youtube.com/watch?v=4mRxIgu9R70)
- [Hypertext Transfer Protocol](https://datatracker.ietf.org/doc/html/rfc2616)
- [Structures de données](https://www.lri.fr/~hivert/COURS/CFA-L3/03-Structures.pdf)
- [About the Open Container Initiative](https://opencontainers.org/about/overview/)
- [Comprendre l'informatique avec l'héraldique](https://www.cynicalturtle.net/kame/post/2023/07/25/Comprendre-l-informatique-avec-l-heraldique)
- [ASCII : explication de l’encodage de caractères](https://www.ionos.fr/digitalguide/serveur/know-how/ascii-american-standard-code-for-information-interchange/)
- [BDX I/O 2023 - L'AGC : retour sur l'ordinateur qui a amené.... - Olivier Poncet et Romain Berthon](https://www.youtube.com/watch?v=y--tOhotacc&list=PLUJzERpatfsVMOzcD4ZpsOvrZzQW-5O1F&index=4&pp=iAQB)
- [Linguisticae](https://www.youtube.com/@Linguisticae)
