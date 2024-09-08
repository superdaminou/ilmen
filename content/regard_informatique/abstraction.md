---
title: Une abstraction au dessus d'une autre
draft: false
tags:
  - informatique
  - vulgarisation
---

> [!info]TL;DR
> Nous ne faisons que manipuler des abstractions de 0 et de 1.

## 0/1

Deux petits chiffres qui forment ce qu'on appelle le système binaire et qui est, jusqu'ici, la façon la plus réduite de représenter une information.

Cette information est nommée **bit**

Gérer avec des lampes ou depuis 1947 avec les transistors qui permettent de construire toutes nos machines.

## x8 pour un octet

Cependant, cette simple binarité ne nous donne pas beaucoup de marge de manœuvre en termes de représentation. En assemblant les bits, on peut commencer à représenter facilement des informations plus complexes.

1936 peut être représenté sous la forme : 11110010000 en fonction de l'ordre dans lequel on lit notre représentation. Nous avons donc la capacité de représenter tous nos entiers à partir de bit.

Maintenant, nous communiquons plus souvent avec des mots qui sont composés de lettres ou plus précisément de caractères. Nous pouvons associer à chaque caractère un code qui nous permettra d'afficher la représentation correspondante.

Combien de bits nous faut-il pour associer tous nos caractères ?

De quoi avons-nous besoin si nous sommes, à tout hasard, Américain ?

Tout l'alphabet latin. Pas besoin d'accents, nos chiffres, quelques caractères utiles pour la transmission de messages (/,+'%).

Avec tout ça on arrive à 64 caractères. 64 en représentation binaire nous donne 111111, soit 6 bits.

Avec la complexification de nos ordinateurs et des besoins de représentations, on connait mieux le mot **octet**

Un octet est composé de 8 bit et permet, notamment, d'accueillir les 256 caractères de l'ASCII.

## Quelques octets pour des primitifs

Nous avons donc désormais une abstraction stable nous permettant de représenter l'ensemble de nos entiers naturels et d'y associer un certain nombre de représentations tel que l'ASCII.

Avec la démocratisation des ordinateurs et les différentes évolutions technologiques, le besoin de pouvoir définir des programmes complexe augmente.

Les opérations logiques que l'on veut implémenter vont nécessiter de pouvoir catégoriser notre donnée plus finement.

Quelques abstractions communes émergent : Entier, Décimal, Caractère

Ce que l'on appelle souvent nos types primitifs qui ne nécessite que quelques octets pour être représentés.

Cela va par ailleurs créer de nouvelles contraintes pour nos représentations. Si nous avons un Integer (int) codé sur un octet qui représente le nombre 127 et que nous tentons de faire une addition avec 1 alors, nous pourrions nous retrouver face une erreur dite d'overflow. Cela se produit car nous dépasserions la valeur maximale que l'on peut représenter sur cet octet qui est 127.

On me répondra que sur un octet, il y a 256 valeurs possibles. Comme on a besoin de représenter les entiers négatifs, on se réserve le bit de poids fort (le premier) pour indiquer le signe ce qui nous réduit à 7 bit significatif soit 128 possibilités.

Avec nos types primitifs, nous avons désormais la capacité de typer plus précisément nos données. Et un des avantages de la catégorisation, c'est qu'elle nous permet de définir l'ensemble des opérations possibles entre deux éléments d'une même catégorie. Par exemple implémenter les opérations arithmétique sur les entiers.

## Tous ensembles

A ce stade là nous avons à présent la capacité de manipuler et de catégoriser notre donnée selon un ensemble restreint de type primitif "ordinaire".

C'est super, mais dans cet article, il y a bien plus qu'un caractère. Et les systèmes qui gèrent l'affichage et la transmission/transformation de cette information pourrait être limité par cet ensemble bien restreint.

On peut grouper nos données, comme nos caractères, pour leur donner une significations.
Plusieurs lettres groupées et ordonné vont pouvoir former un mot.

Mais aussi, on pourrait vouloir grouper un ensemble de nombres décimaux pour représenter des relevés de températures.

Pour cela, nous allons utiliser la notion de tableaux. Cette nouvelle abstraction va nous permettre d'agréger des données les une avec les autres de façon à créer un sens. Que ce soit un sens directement fonctionnel comme pour un mot, ou de nouvelles abstractions permettant de créer des ensembles données encore plus complexes.

## En structure

Les premières structures que l'on va pouvoir formaliser vont notamment être les structures algorithmiques classiques :

- List(e): Structure permettant de ranger dans un certain ordre nos données, chaque donnée ayant donc potentiellement une donnée qui la suit et/ou qui la précède. Qui va notamment donner les Pile et les Files qui sont deux types de List avec des opérations distinctes

- Map ou Dictionnaire: Permet d'associer a N valeur un ensemble d'autres valeurs. Va se baser sur les fonctions de hachage pour déterminer les associations

- Graphe: permet d'associer a une valeur une ou N valeur qui elles-mêmes pourront être associées à une ou N valeurs, ces arbres peuvent avoir plusieurs formes : orienté, cyclique, binaire, etc...

Mais aussi tout autre représentation complexe nécessaires pour faciliter la réponse au besoin fonctionnel ou technique.

Que ce soit un utilisateur et ses données ou une requête que l'on transmet, nous pouvons à partir de 0 et de 1 représenter toutes les structures qui peuvent nous venir en tête. L'organisation sera plus ou moins complexe et adapté et deux personnes pourront fournir une structure différente pour même représentation voulue.

Afin de pouvoir échanger nos représentations et organiser la communication entre les différents agents, nous avons besoin de créer un ensemble de [[norme_informatiques|normes]].

## Ressources diverses

- http://iamjmm.ovh/NSI/architecture/site/transistor.html
- https://fr.wikipedia.org/wiki/Octet
- https://boowiki.info/art/unite-d-information/octet.html
- https://www.youtube.com/watch?v=4mRxIgu9R70
- https://datatracker.ietf.org/doc/html/rfc2616
- https://www.lri.fr/~hivert/COURS/CFA-L3/03-Structures.pdf
- https://fr.wikipedia.org/wiki/Informatique
- https://opencontainers.org/about/overview/
- https://hblok.net/blog/storage/
- https://stock.adobe.com/fr/images/comparison-of-cellular-network-performance-and-evolution-from-1g-to-5g-and-6g/400610742
- https://www.cynicalturtle.net/kame/post/2023/07/25/Comprendre-l-informatique-avec-l-heraldique
- https://www.ionos.fr/digitalguide/serveur/know-how/ascii-american-standard-code-for-information-interchange/
- https://www.youtube.com/watch?v=y--tOhotacc&list=PLUJzERpatfsVMOzcD4ZpsOvrZzQW-5O1F&index=4&pp=iAQB
