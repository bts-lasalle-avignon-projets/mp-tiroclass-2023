# Description

Le projet mp-tiroclass-2023 est un projet permettant de rechercher de manière efficace un composant dans une servante sans se compliquer à retenir les emplacement.

Un site web est à disposition afin d'effectuer des recherches et d'indiquer le nombre de composants disponible dans la servante.

# Installation

* Base de donnée
  * Installer un serveur SQL (MySQL, MariaDB, CitronDB, ...)
  * Créer une base de données et les tables manuellement avec:
      ```sql
      CREATE TABLE 'tiroir01' ('ID' varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,'TYPE' varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,'NAME' varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,'TAGS' varchar(1000) COLLATE utf8mb4_general_ci NOT NULL,'QUANTITY' int NOT NULL DEFAULT '0') ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
      ```
   * Ajouter du contenu aux tables
   * Renseigner les fichiers PHP avec les adresses de la base.
   * Connecter une carte Arduino
   * Brancher les beandeaux LED ainsi que le bouton d'arrêt sur la carte
   * Téléverser le code
   * Démarrer le site et se rendre sur l'adresse de celui-ci
   * Disposer les bandeaux LED sur le tiroclass
   * Fin
# Utilisation

Depuis l'interface web, recherchez un composant grace à :

  * Son nom
  * Son modèle
  * Des mots clés
  * Sa quantité disponible
  * Son type

Ensuite cliquez sur "Rechercher" afin d'afficher tous les composants correspondant.

Ajouter/Enlever une certaine quantitée d'un composant à votre guise.

Lors d'un clic sur le bouton "Localiser", le site enverra une requête vers la carte Arduino à travers le port USB et le panneau LED vous affichera le tirroir ainsi que l'emplacement du composant que vous recherchez.

Appuyer ensuite sur le bouton connecté à la carte pour indiquer la fin de la localisation, ce qui éteindra le bandeau LED.

# Librairies
La carte arduino du projet tiroclass fonctionne grâce à la librairie FastLED : //https://github.com/FastLED/FastLED

# Crédits
- HILLON Jules
- VALOBRA Enzo
- BAUDET Jules
