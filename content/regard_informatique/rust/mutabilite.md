---
title: Dis moi quand tu bouges
draft: false
tags:
  - informatique
  - rust
  - reflexion
---

Nous poussant déjà à être explicites sur nos [[option_result|erreurs]] et sur qui [[propriete_donnee|possède une variable]], Rust va encore plus loin en nous obligeant à préciser qui a le droit de modifier une variable.

Par défaut, une variable est déclarée comme immutable : `let a = String::default();`.

Si l'on veut permettre sa modification, il faut le spécifier avec le mot clé `mut`. Toujours dans une stratégie globale d'explicitation, cela impactera directement les signatures de nos méthodes en affichant clairement les risques d'effets de bord.

Cette fonctionnalité toute simple s'inscrit parfaitement dans la philosophie générale de Rust et nous force, une fois de plus, à être explicites quant à l'intention derrière chaque ligne de code.
