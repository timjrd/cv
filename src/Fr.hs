module Fr (fr) where

import Cv

fr = Cv
  { lang          = "fr"
  , hLang         = "français"
  , hPortrait     = "portrait photographique"

  , hPositions    = "Expériences Professionnelles"
  , hBackgrounds  = "Formations"
  , hPublications = "Publication"
  , hLanguages    = "Anglais"
  , hSkills       = "Compétences"
  , hReferences   = "Références"
  , hHobbies      = "Loisirs & Divers"
  , hProjects     = "Projets Personnels"

  , author        = "Timothée Jourde"
  , occupation    = "Ingénieur logiciel"
  , email         = "timjrd@netc.fr"
  , website       = ["timjrd.github.io", "github.com/timjrd"]
  , location      = "Bordeaux, France"
  , phone         = "+33 6 79 50 56 22"
  , age           = "28 ans"

  , introduction  = "Passionné et autodidacte, je suis titulaire d'un Master et d'un DUT en informatique. Mes différentes expériences professionnelles, universitaires, et personnelles, m'ont amené à acquérir des compétences en algorithmique et structures de données, en programmation et génie logiciel ; mais aussi en visualisation de données et développement d'interfaces utilisateur."

  , positions =
    [ Position
      { period      = ["Septembre à","Novembre 2022"]
      , keywords    = ["Rust", "Iced", "International", "Remote"]
      , description = toRich "Poste d'ingénieur logiciel chez Kraken. Développement de Cryptowatch Desktop (front-end), un terminal de trading natif multiplateforme réalisé avec Iced : un GUI toolkit maison et open-source en Rust. Équipe internationale anglophone et full-remote. Licencié lors d'une réduction massive du personnel."
      , posUrl      = "cryptowat.ch/apps/desktop" }

    , Position
      { period      = ["Novembre 2020","à Juillet 2022"]
      , keywords    = ["C++", "JUCE", "MIDI/MPE", "Windows", "macOS", "iPadOS"]
      , description = toRich "Poste de développeur chez Joué Music Instruments, fabriquant d'un instrument de musique électronique expressif. Développement d'une application musicale native multiplateforme accompagnant l'instrument : interface utilisateur et communication avec l'appareil en MIDI, principalement."
      , posUrl      = "jouemusic.com/pages/joue-play-app" }

    , Position
      { period      = ["avril à","août 2019"]
      , keywords    = ["C++", "Python", "Gurobi", "Optimisation linéaire", "Bio-informatique"]
      , description = toRich "Stage de fin d'études de Master au LaBRI, équipe Biologie Computationnelle : implémentation puis évaluation et amélioration d'un programme d'analyse de séquences génétiques, dont l'objectif est d'identifier parmi l'ensemble des souches connues d'une bactérie, lesquelles sont présentes dans un échantillon et en quelles quantités. Le matériel génétique de l'échantillon étant séquencé avec une méthode haut débit."
      , posUrl      = "github.com/timjrd/mrsep/tree/master/src/mrsep.ilp" }

    , Position
      { period      = ["juin à","juillet 2018"]
      , keywords    = ["Haskell", "IA"]
      , description = toRich "Stage de première année de Master au LaBRI, équipe Méthodes Formelles : conception et réalisation d'un programme-joueur pour le jeu de société Mastermind."
      , posUrl      = "github.com/timjrd/mastermind" }

    , Position
      { period      = ["juin à","juillet 2017"]
      , keywords    = ["Scala", "Scala.js", "D3.js"]
      , description = toRich "Poste de développeur à l'ISPED, équipe ERIAS : poursuite du projet précédent en collaboration avec le LaBRI (voir ci-dessous)."
      , posUrl      = [] }

    , Position
      { period      = ["mars à","août 2016"]
      , keywords    = ["Java", "Lucene", "GWT", "Data mining", "Web sémantique"]
      , description = toRich "Poste de développeur à l'ISPED, équipe ERIAS : développement d'un système d'analyse de forums en ligne afin de détecter des mésusages de médicaments par la population, avec une application web de visualisation."
      , posUrl      = [] }

    , Position
      { period      = ["avril à","mai 2015"]
      , keywords    = ["C++", "OpenGL", "GLSL", "Scala", "Spark", "Big data"]
      , description = toRich "Stage de DUT au LaBRI, équipe EVADoMe : réalisation d'une application de visualisation de données massives, basée sur les coordonnées parallèles, avec un back-end sur infrastructure distribuée. Ce travail a servi de base à une publication (voir ci-dessous)."
      , posUrl      = [] } ]

  , backgrounds =
    [ Background
      { date        = "2017 à 2019"
      , designation = "Master Informatique à l'Université de Bordeaux, spécialité Génie Logiciel." }

    , Background
      { date        = "2016 à 2017"
      , designation = "Licence Informatique à l'Université de Bordeaux (L3)." }

    , Background
      { date        = "2013 à 2015"
      , designation = "DUT Informatique à l'IUT de Bordeaux." }

    , Background
      { date        = "2013"
      , designation = "BAC S spécialité Mathématiques." } ]

  , publications = [pub]

  , languages =
    [ Language
      { language = []
      , status   = "Voir dernière expérience professionnelle (équipe internationale anglophone). Lecture quotidienne d'articles techniques et de documentation." } ]

  , skills =
    [[ Skill
       { skill   = ["Rust"]
       , details = "Grand intérêt. Expérience professionnelle. Bonne maîtrise." }

     , Skill
       { skill   = ["C++"]
       , details = "Intérêt. Expérience professionnelle. Bonne maîtrise." }

     , Skill
       { skill   = ["Haskell"]
       , details = "Grand intérêt. Expérience de stage. Bonne maîtrise." }

     , Skill
       { skill   = ["Java"]
       , details = "Expérience professionnelle. Bonne maîtrise." }

     , Skill
       { skill   = ["Scala"]
       , details = "Grand intérêt. Expérience professionnelle. Maîtrise correcte." }

     , Skill
       { skill   = ["C"]
       , details = "Maîtrise correcte." }

     , Skill
       { skill   = ["Python"]
       , details = "Expérience de stage. Maîtrise correcte." }

     , Skill
       { skill   = ["JavaScript"]
       , details = "Notions." } ]

    ,[ Skill
       { skill   = ["Linux"]
       , details = "Intérêt. Bonne connaissance et utilisation quotidienne." }

     , Skill
       { skill   = ["Git"]
       , details = "Intérêt. Expérience professionnelle. Bonne maîtrise." }

     , Skill
       { skill   = ["Nix/NixOS"]
       , details = "Grand intérêt. Maîtrise correcte." }

     , Skill
       { skill   = ["CSS/HTML"]
       , details = "Intérêt. Bonne maîtrise." }

     , Skill
       { skill   = ["Bash"]
       , details = "Bonne maîtrise, malheureusement." } ]

    ,[ Skill
       { skill   = []
       , details = "Adepte du logiciel libre, attiré par les modèles économiques impliqués dans l'open‑source. Curieux, culture approfondie en informatique." } ]]

  , hobbies =
    [[ Hobby
       { hobby = "Musique"
       , hobbyDetails = "Batterie, percussions, piano." }

     , Hobby
       { hobby = "Ski alpin"
       , hobbyDetails = "Bon niveau." }

     , Hobby
       { hobby = "Cuisine"
       , hobbyDetails = "Plats végétariens." } ]

    ,[ Hobby
       { hobby = []
       , hobbyDetails = "A visité Gabon, Sénégal, Japon, États‑Unis, Nouvelle-Calédonie, Angleterre, Italie, Espagne, Belgique." } ]

    ,[ Hobby
       { hobby = []
       , hobbyDetails = "Permis B, dispose d'un véhicule." } ]]

  , references = []

  , projects =
    [ Project
      { projKeywords    = ["Haskell", "IA", "Musique générative", "Synthèse sonore"]
      , projDescription = "Logiciel produisant un flux audio musical généré aléatoirement (mélodies et timbres). Fait à partir de zéro."
      , projUrl         = "github.com/timjrd/automagicsynth" }

    , Project
      { projKeywords    = ["Haskell", "Web scraping", "WebExtensions"]
      , projDescription = "Métamoteur de recherche de vidéos accessibles sur le Web. Les résultats sont triés selon une estimation de qualité et de durée des vidéos. Une interface graphique web est disponible."
      , projUrl         = "github.com/timjrd/scrapeaming" }

    , Project
      { projKeywords    = ["Rust", "Simulation"]
      , projDescription = "Simulation de Barnes–Hut (problème à N corps) couplée à un code stencil produisant une vidéo esthétique. Fait à partir de zéro."
      , projUrl         = "github.com/timjrd/stencil-n-body.rs" } ]}

pub = Publication
  { authors = [("Joris","Sansen"), ("Gaëlle","Richer"), ("Timothée","Jourde"), ("Frédéric","Lalanne"), ("David","Auber"), ("Romain","Bourqui")]
  , title   = "Visual Exploration of Large Multidimensional Data Using Parallel Coordinates on Big Data Infrastructure"
  , journal = "Informatics"
  , pubDate = "12 juillet 2017"
  , pubUrl  = "www.mdpi.com/2227-9709/4/3/21" }
