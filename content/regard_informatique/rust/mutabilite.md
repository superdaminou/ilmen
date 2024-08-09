---
title: Dis moi quand tu bouges
draft: true
tags:
  - informatique
  - rust
---

Nous poussant déjà à être explicite sur nos [[option_result|erreurs]] et à qui [[propriete_donnee|appartient une variable]], Rust fini de nous forcer la main en nous demandant qui à le droit de modifier une variable.

Par défaut une variable est déclaré comme immutable: `let a = String::default()`;.

Si l'on veut permettre sa modification il faut le préciser avec le mot clé `mut`. Toujours dans un stratégie globale d'explicitation cela impactera directement les signatures de nos méthodes en affichant clairement les risque d'effet de bords.
