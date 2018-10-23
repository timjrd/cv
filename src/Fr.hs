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

  , author        = "Timothée Jourde"
  , occupation    = "Étudiant en Master Informatique"
  , email         = "timothee.jourde@u-bordeaux.fr"
  , website       = "timjrd.github.io/cv"
  , phone         = "+33 6 79 50 56 22"
  , age           = "23 ans"

  , introduction  = "Passionné et autodidacte, je suis à la recherche d'un stage de fin d'études à partir d'avril 2019. Je suis principalement focalisé sur la programmation fonctionnelle."
  
  , positions =
    [ Position
      { period      = ("juin - juillet","2018")
      , keywords    = ["Haskell", "AI"]
      , description = "Stage de première année de Master au LaBRI, équipe Méthodes Formelles : conception et réalisation d'un programme-joueur de Mastermind paramétrique. Supervisé par " ? gimbert ? " et " ? fijalkow ? "."
      , posUrl      = "github.com/timjrd/mastermind" }

    , Position
      { period      = ("juin - juillet","2017")
      , keywords    = ["Scala", "Scala.js", "D3.js"]
      , description = toRich "Poste de développeur à l'ISPED, équipe ERIAS : poursuite du projet précédent en collaboration avec le LaBRI (voir ci-dessous)."
      , posUrl      = "" }
        
    , Position
      { period      = ("mars - août","2016")
      , keywords    = ["Java", "Lucene", "GWT", "Data mining", "Web sémantique"]
      , description = "Poste de développeur à l'ISPED, équipe ERIAS : développement d'un système d'analyse de forums en ligne afin de détecter des mésusages de médicaments par la population, avec une application web de visualisation. Supervisé par " ? dialo ? "."
      , posUrl      = "" }
        
    , Position
      { period      = ("avril - mai","2015")
      , keywords    = ["C++", "OpenGL", "GLSL", "Scala", "Spark", "Big data"]
      , description = "Stage de DUT au LaBRI, équipe EVADoMe : réalisation d'une application de visualisation de données massives basée sur les coordonnées parallèles avec un back-end sur infrastructure distribuée. Supervisé par " ? bourqui ? ". Ce travail a servi de base à une publication " ? pub ? "."
      , posUrl      = "" } ]

  , backgrounds =
    [ Background
      { date        = "actuellement"
      , designation = "Deuxième année de Master Informatique à l'Université de Bordeaux, spécialité Génie Logiciel." }
      
    , Background
      { date        = "2017 - 2018"
      , designation = "Première année de Master Informatique à l'Université de Bordeaux." }

    , Background
      { date        = "2016 - 2017"
      , designation = "Troisième année de Licence Informatique à l'Université de Bordeaux." }

    , Background
      { date        = "2013 - 2015"
      , designation = "DUT Informatique à l'IUT de Bordeaux." }

    , Background
      { date        = "2013"
      , designation = "BAC S spécialité Mathématiques." } ]
  
  , publications = []

  , languages =
    [ Language
      { language = []
      , status   = "CEFR B2 (niveau intermédiaire avancé). Lecture quotidienne d'articles techniques et de documentation." } ]

  , skills =
    [[ Skill
       { skill   = "Haskell"
       , details = "Grand intêret. Principalement focalisé sur ce langage. Plusieurs projets réalisés. Expérience de stage. Bonne maîtrise du langage de base. Approfondissements réguliers." }

     , Skill
       { skill   = "C++"
       , details = "Intêret. Plusieurs projets. Expérience de stage. Bonne maîtrise." }

     , Skill
       { skill   = "Java"
       , details = "Plusieurs projets. Expérience professionnelle. Bonne maîtrise." }
        
     , Skill
       { skill   = "C"
       , details = "Plusieurs projets. Maîtrise correct." }
      
     , Skill
       { skill   = "Scala"
       , details = "Grand intêret. Expérience professionnelle. Maîtrise correct." } ]

    ,[ Skill
       { skill   = "GNU/Linux"
       , details = "Bonne connaissance et utilisation quotidienne." }
    
     , Skill
       { skill   = "Nix/NixOS"
       , details = "Grand intêret et utilisation quotidienne. Maîtrise correct." }

     , Skill
       { skill   = "Git"
       , details = "Bonne maîtrise." } ]

    ,[ Skill
       { skill   = "CSS3"
       , details = "Intêret. Plusieurs projets. Bonne maîtrise." }

     , Skill
       { skill   = "XHTML5"
       , details = "Maîtrise correct." } ]

    ,[ Skill
       { skill   = []
       , details = "Adepte du logiciel libre. Curieux, culture approfondie en informatique." } ]]

  , references = [bourqui, dialo, gimbert, fijalkow]
  }

pub = Publication
  { authors = [("Joris","Sansen"), ("Gaëlle","Richer"), ("Timothée","Jourde"), ("Frédéric","Lalanne"), ("David","Auber"), ("Romain","Bourqui")]
  , title   = "Visual Exploration of Large Multidimensional Data Using Parallel Coordinates on Big Data Infrastructure"
  , journal = "Informatics"
  , pubDate = "12 juillet 2017"
  , pubUrl  = "www.mdpi.com/2227-9709/4/3/21" }

bourqui = Reference
  { name = ("Romain","Bourqui")
  , role = "Maître de conférence au LaBRI, équipe EVADoMe (LAboratoire Bordelais de Recherche en Informatique ; Exploration Visuelle et Analytique de DOnnées MassivEs)"
  , mail = "bourqui@labri.fr" }

dialo = Reference
  { name = ("Gayo","Dialo")
  , role = "Maître de conférence à l'ISPED, équipe ERIAS (Institut de Santé Publique, d'Épidémiologie et de Développement ; Equipe de Recherche en Informatique Appliquée à la Santé)"
  , mail = "gayo.diallo@u-bordeaux.fr" }

gimbert = Reference
  { name = ("Hugo","Gimbert")
  , role = "Chercheur CNRS au LaBRI"
  , mail = "hugo.gimbert@labri.fr" }

fijalkow = Reference
  { name = ("Nathanaël","Fijalkow")
  , role = "Chercheur CNRS au LaBRI"
  , mail = "nathanael.fijalkow@labri.fr" }
  
