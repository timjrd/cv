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
  , occupation    = "Programmeur"
  , email         = "timjrd@pm.me"
  , website       = ["github.com/timjrd"]
  , location      = "Paris, France"
  , phone         = ""
  , age           = "30 ans"

  , introduction  = "Passionné et autodidacte, je suis titulaire d'un Master et d'un DUT en informatique. Mes différentes expériences professionnelles, universitaires, et personnelles, m'ont amené à acquérir des compétences en algorithmique et structures de données, en programmation et génie logiciel ; mais aussi en développement desktop, visualisation de données, front-ends, et systèmes Linux."

  , positions =
    [ Position
      { period      = ["depuis","juin 2023"]
      , keywords    = ["C++", "Slint", "Linux embarqué", "Full remote", "CDI"]
      , description = toRich "Poste d'ingénieur logiciel chez Witekio. Développement d'une démo (front-end et middleware) présentant Welma: une distribution Linux embarquée maison. Autres travaux middleware pour des clients finaux."
      , posUrl      = "youtu.be/Ewj-gwSNXmc?t=36" }

    , Position
      { period      = ["septembre à","novembre 2022"]
      , keywords    = ["Rust", "Iced", "International", "Full remote", "Self-employed"]
      , description = toRich "Poste d'ingénieur logiciel chez Kraken. Développement de Cryptowatch Desktop (front-end), un terminal de trading multiplateforme réalisé avec Iced : un GUI toolkit maison et open-source. Équipe internationale anglophone. Licencié lors d'une réduction massive du personnel."
      , posUrl      = "youtu.be/Ja2PDH8Py5g?t=115" }

    , Position
      { period      = ["novembre 2020","à juillet 2022"]
      , keywords    = ["C++", "JUCE", "MIDI/MPE", "Windows", "macOS", "iPadOS", "CDI"]
      , description = toRich "Poste de développeur chez Joué Music Instruments, fabriquant d'un instrument de musique électronique. Développement d'une application musicale multiplateforme accompagnant l'appareil. Travaux sur l'interface utilisateur et la communication avec l'instrument en MIDI, principalement."
      , posUrl      = "youtu.be/C7f7ln0NPGc" }

    , Position
      { period      = ["avril à","août 2019"]
      , keywords    = ["C++", "Python", "Bio-informatique", "Académique", "Stage"]
      , description = toRich "Stage de fin d'études de Master au LaBRI, équipe Biologie Computationnelle : implémentation et benchmarking d'un programme d'analyse de séquences génétiques."
      , posUrl      = "github.com/timjrd/mrsep/tree/master/src/mrsep.ilp" }

    , Position
      { period      = ["juin à","juillet 2018"]
      , keywords    = ["Haskell", "Académique", "Stage"]
      , description = toRich "Stage de première année de Master au LaBRI, équipe Méthodes Formelles : conception et réalisation d'un programme-joueur pour une généralisation du jeu de société Mastermind."
      , posUrl      = "github.com/timjrd/mastermind" }

    , Position
      { period      = ["juin à","juillet 2017"]
      , keywords    = ["Scala", "Scala.js", "Académique", "CDD"]
      , description = toRich "Poste de développeur à l'ISPED, équipe ERIAS : poursuite du projet précédent en collaboration avec le LaBRI (voir ci-dessous)."
      , posUrl      = [] }

    , Position
      { period      = ["mars à","août 2016"]
      , keywords    = ["Java", "Lucene", "GWT", "Académique", "CDD"]
      , description = toRich "Poste de développeur à l'ISPED, équipe ERIAS : développement d'un système d'analyse de forums de discussion en ligne, afin de détecter des tendances de mésusage de médicaments, avec une application Web de visualisation."
      , posUrl      = [] }

    , Position
      { period      = ["avril à","mai 2015"]
      , keywords    = ["C++", "OpenGL", "GLSL", "Scala", "Académique", "Stage"]
      , description = toRich "Stage de DUT au LaBRI, équipe EVADoMe : réalisation d'une application de visualisation de données massives, basée sur les coordonnées parallèles, avec un back-end sur infrastructure distribuée. Ce travail a fourni une base pour une publication scientifique (voir ci-dessous)."
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
      , status   = "Voir poste chez Kraken (équipe internationale anglophone). Lecture quotidienne d'articles techniques et de documentation." } ]

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
       , details = "Grand intérêt. Bonne connaissance. Utilisation quotidienne." }

     , Skill
       { skill   = ["Git"]
       , details = "Intérêt. Expérience professionnelle. Bonne maîtrise." }

     , Skill
       { skill   = ["Nix/NixOS"]
       , details = "Grand intérêt. Bonne maîtrise." }

     , Skill
       { skill   = ["CSS/HTML"]
       , details = "Intérêt. Maîtrise correcte." }

     , Skill
       { skill   = ["Bash"]
       , details = "Bonne maîtrise, malheureusement." }

     , Skill
       { skill   = ["Emacs"]
       , details = "Syndrome de Stockholm." } ]

    ,[ Skill
       { skill   = []
       , details = "Adepte du logiciel libre, attiré par les modèles économiques impliqués dans l'open-source. Curieux, culture approfondie en informatique. Très intéressé par la cryptographie, la compilation, et le Web comme solution compétitive face aux plateformes natives, avec des initiatives telles que WebAssembly." } ]]

  , hobbies =
    [[ Hobby
       { hobby = "Ski alpin"
       , hobbyDetails = "Bon niveau." }

     , Hobby
       { hobby = "Roller en ligne"
       , hobbyDetails = "Niveau correct. Entraînement soutenu." }

     , Hobby
       { hobby = "Cuisine"
       , hobbyDetails = "Plats végétariens." }

    , Hobby
       { hobby = "Musique"
       , hobbyDetails = "Alto, batterie, percussions, piano." }

     , Hobby
       { hobby = "Politique"
       , hobbyDetails = "Fervent partisan de l'intégration européenne." } ]

    ,[ Hobby
       { hobby = []
       , hobbyDetails = "A visité Gabon, Japon, Sénégal, États-Unis, Turquie, Nouvelle-Calédonie, Italie, Royaume-Uni, Espagne, Belgique." } ]

    ,[ Hobby
       { hobby = []
       , hobbyDetails = "Permis B." } ]]

  , references = []

  , projects =
    [ Project
      { projKeywords    = ["Haskell", "Musique générative", "Synthèse sonore"]
      , projDescription = "Logiciel produisant un flux audio musical généré aléatoirement (mélodies et timbres). Fait à partir de zéro."
      , projUrl         = "github.com/timjrd/automagicsynth" }

    , Project
      { projKeywords    = ["Haskell", "Web scraping", "WebExtensions"]
      , projDescription = "Métamoteur de recherche de vidéos accessibles sur le Web (CLI et GUI Web). Les résultats sont triés selon une estimation de qualité et de durée des vidéos."
      , projUrl         = "github.com/timjrd/scrapeaming" }

    , Project
      { projKeywords    = ["Rust", "Simulation"]
      , projDescription = "Simulation de Barnes–Hut (problème à N corps) couplée à un code stencil, produisant une vidéo esthétique. Fait à partir de zéro."
      , projUrl         = "github.com/timjrd/stencil-n-body.rs" } ]}

pub = Publication
  { authors = [("Joris","Sansen"), ("Gaëlle","Richer"), ("Timothée","Jourde"), ("Frédéric","Lalanne"), ("David","Auber"), ("Romain","Bourqui")]
  , title   = "Visual Exploration of Large Multidimensional Data Using Parallel Coordinates on Big Data Infrastructure"
  , journal = "Informatics"
  , pubDate = "12 juillet 2017"
  , pubUrl  = "mdpi.com/2227-9709/4/3/21" }
