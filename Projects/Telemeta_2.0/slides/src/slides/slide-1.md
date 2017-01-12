class: center, middle, telemeta

# Telemeta 2.0
<hr>
### 12/01/2017 - 10h-17h - Jussieu
<img src="img/icon.png" height="100px" />

---

# Ordre du jour

- 10h - 10h45 : Définitions des objectifs / tour de table
- 10h45 - 11h15 : Introduction (Guillaume et Joséphine)
- 11h15 - 12h30 :  Identification des besoins des partenaires présents
- 12h30 - 13h30 : Déjeuner sur place
- 13h30 - 14h : Traitement du signal et annotation collaborative
- 14h - 15h30 : Identification des besoins documentaires
- 15h30 - 17h : Résumé, validation de la répartition de tâches, des financements et du calendrier

# Notes

https://pad.parisson.com/p/telemeta_2.0

---

# Objectifs de la réunion (5mn)

1. Faire un tour des projets en cours et / ou à venir basé sur Telemeta
2. Détailler l'enjeu d'une version modulaire de Telemeta
2. Passer en revue l'ensemble des besoins identifés à ce jour en précisant :
   - les points
   - les critiques
   - les priorités
   - les perspectives
   - les investissements des partenaires (humains et financiers)
3. Organisation et répartition des tâches, calendrier, stages, etc..
4. Élaborer le draft d'un cahier des charges pour la prochaine version de Telemeta/TimeSide
5. Déterminer les sources de financement et les communautés de développement envisageable

---
class: tight

# Tour de table, 2mn/pers (40mn)

- Joséphine Simonnot (responsable Telemeta CREM et différents projets)
- Aude Da Cruz Lima (suivi Telemeta CREM et différents projets)
- Guillaume Pellerin (IRCAM, Parisson)
- Thomas Fillon (Parisson)
- Anas Ghrab (CMAM/Tunisie, responsable des activités scientifiques, Telemeta)   
- M. Castellengo (Telemeta LAM)    
- Pascal Lesaec (suivi informatique Telemeta LAM, présence à confirmer)
- Nedra Mellouli (suivi informatique Telemeta CREM et projet Heritamus)
- Marlène Belly (responsable projet Telemeta Poitiers)
- Luc léger (développeur Telemeta Poitiers / Coopérative Artéfacts)
- Alexandre Séli (documentaliste Telemeta Poitiers)
- Aurélie Helmlinger (responsable projets Pan-E-Pedia et DACARYH)
- Elio Quinton (Projet DACARYH)
- Severine Cachat (Maison des Cultures du Monde, présente le matin
- Nolwenn Blanchard, excusée ou suivi par visio (spécification du Telemeta MCM)
- Marie B Le Gonidec (responsable projet Les Réveillées, présent à partir du déjeuner)
- Florence Neveux (suivi technique projet Les Réveillées, présente à partir du déjeuner)
- Sara Tandar (responsable technique projet SAWA, suivi Pan-E-Pedia)  
- H. Chamoux (Phonobase)

---

# Introduction (Guillaume et Joséphine, 30mn)

- Historique rapide du projet et investissements de base
- Stratégie et mode de développement et d'investissement coopératif
- Etat des lieux de la plateforme Telemeta actuelle (hébergement dev et prod, branches)
- Projets et études basés sur Telemeta y compris ceux des partenaires absents (INRIA-Kamoulox, NYU, etc)
- Pourquoi Telemeta 2.0 ?

--

# Etat des Lieux

- Telemeta 1.6, TimeSide
- Dépendances, branches, packaging
- Hébergement mutualisé HumaNum

---
class: center

# Vers un modèle modulaire (1.0)

<img src="img/telemeta_model.svg" width="20%" />

---
class: center

# Vers un modèle modulaire (1.5)

<img src="img/telemeta_model_1.5.svg" width="20%" />

---
class: center

# Vers un modèle modulaire (2.0)

<img src="img/telemeta_model_2.svg" width="50%" />

---

# Projets et activités en cours

- Instances
  - CREM http://archives.crem-cnrs.fr/
  - LAM http://telemeta.lam.jussieu.fr/
  - CMAM http://phonotheque.cmam.tn/
  - MCM (en cours)
  - Univ Poitiers (en cours)
--

- R&D
  - DIADEMS (ANR)
  - DaCaRyH (ANR)
  - WASABI (ANR)
  - Kamoulox (ANR)
  - TimeSide

---

# Pourquoi Telemeta-Core (2.0) ?

- faciliter le développpement de projets métiers
- consolider le coeur commun (modèles de données et fonctions génériques)
- favoriser les interactions entre les corpus
- mieux informer les partenaires des développements et besoins mutualisés

---

# Besoins en fonctions collaboratives

- Versionnement des données
- partage/statut des annotations et des listes
- lecture et embarquement des listes
- création/gestion de groupes d'utilisateurs pour l'édition de corpus
- formulaire de demande/validation d’inscription des utilisateurs (bilingue)
- outil de prise de note (PUNDIT, etc)

---

# Identification des besoins des partenaires pour un Telemeta-Core (1h15)

- Présentation du résultat du brainstorming de novembre 2016 (JS, AdCL, AG, GP, TF) (20mn)
  https://github.com/Parisson/Telemeta/projects/1

- Maintenance/pérennité de la plateforme
    - modularisation et gestion des instances
    - mise à jour des langages et logiciels
    - Telemeta générique (couplage Nakala-Telemeta ?)
    - organisation générale de la gestion et des développements des outils Telemeta et TimeSide
    - documentation technique du projet
    - constitution d’un comité technique
    - relation avec Huma Num
    - introduction au web sémantique
    - documentation
    - identification d'éventuels partenaires

- Inventaire par partenaire (2 ou 3 points prioritaires maxi)

---
class: center, middle, telemeta

# Déjeuner ! (1h)
<img src="img/icon.png" height="100px" />

---
# Traitement du signal et annotation (30 mn)

- indexation manuelle et semi-automatique
- API : service d'analyse audio
- annotation collaborative
- nouvelle interface (zoom !)
- affichage de plusieurs item/players sur une même page ?
- pluginisation de TimeSide (pour OMEKA)

---

# Identification des besoins documentaires (1h)

- répétabilité des champs (ou champs multiples)
- gestion des entités nommées et vocabulaires contrôlés (+ rôle/fonction, référentiels externes, accès/saisie/visualisation/annotation des listes/énumérations)
- amélioration du moteur de recherche
- gestion du multilinguisme
- gestion des dates (? joséphine)
- import en masse de métadonnées
- gestion des données d'exemplaires
- entrepôt OAI en DC et EDMS, RDF
- licences
- visualisation de l’arborescence
- amélioration de la géolocalisation
- documentation
- etc...

---

# Besoins divers (15 mn)

- Design
- MAJ des page(s) d’accueil
- carrousel d’image (à partir des média associés de type image ?)

---

# Groupes de travail, résumé et validation (1h30)

- définition sources de financement potentielles
- répartition de tâches
- création de groupes de travail
- calendrier

---
class: center, middle, telemeta

# Merci et à bientôt !

<img src="img/icon.png" height="100px" />

http://telemeta.org
