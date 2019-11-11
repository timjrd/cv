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
  , hHobbies      = "Loisirs"

  , author        = "Timothée Jourde"
  , occupation    = "Ingénieur logiciel"
  , email         = "timjrd@netc.fr"
  , website       = ["timjrd.github.io/cv", "github.com/timjrd"]
  , phone         = "+33 6 79 50 56 22"
  , age           = "24 ans"

  , introduction  = "Passionné et autodidacte, je suis titulaire d'un Master et d'un DUT en informatique. Mes différentes expériences m'ont amené à acquérir des compétences spécifiques en algorithmique, programmation fonctionnelle, génie logiciel, visualisation de données, et développement web."
  
  , positions =
    [ Position
      { period      = ("avril - août","2019")
      , keywords    = ["C++", "Python", "Gurobi", "Optimisation linéaire", "Bio-informatique"]
      , description = "Stage de fin d'études de Master au LaBRI, équipe Biologie Computationnelle : implémentation puis évaluation et amélioration d'un programme d'analyse de séquences génétiques, dont l'objectif est d'identifier parmi l'ensemble des souches connues d'une bactérie, lesquelles sont présentes dans un échantillon et en quelles quantités. Le matériel génétique de l'échantillon étant séquencé avec une méthode haut débit. Supervisé par " ? chauve ? "."
      , posUrl      = [] }
      
    , Position
      { period      = ("juin - juillet","2018")
      , keywords    = ["Haskell", "AI"]
      , description = "Stage de première année de Master au LaBRI, équipe Méthodes Formelles : conception et réalisation d'un programme-joueur de Mastermind paramétrique. Supervisé par " ? fijalkow ? "."
      , posUrl      = "github.com/timjrd/mastermind" }

    , Position
      { period      = ("juin - juillet","2017")
      , keywords    = ["Scala", "Scala.js", "D3.js"]
      , description = toRich "Poste de développeur à l'ISPED, équipe ERIAS : poursuite du projet précédent en collaboration avec le LaBRI (voir ci-dessous)."
      , posUrl      = [] }
        
    , Position
      { period      = ("mars - août","2016")
      , keywords    = ["Java", "Lucene", "GWT", "Data mining", "Web sémantique"]
      , description = "Poste de développeur à l'ISPED, équipe ERIAS : développement d'un système d'analyse de forums en ligne afin de détecter des mésusages de médicaments par la population, avec une application web de visualisation. Supervisé par " ? dialo ? "."
      , posUrl      = [] }
        
    , Position
      { period      = ("avril - mai","2015")
      , keywords    = ["C++", "OpenGL", "GLSL", "Scala", "Spark", "Big data"]
      , description = "Stage de DUT au LaBRI, équipe EVADoMe : réalisation d'une application de visualisation de données massives, basée sur les coordonnées parallèles, avec un back-end sur infrastructure distribuée. Supervisé par " ? bourqui ? ". Ce travail a servi de base à une publication " ? pub ? "."
      , posUrl      = [] } ]

  , backgrounds =
    [ Background
      { date        = "2017 - 2019"
      , designation = "Master Informatique à l'Université de Bordeaux, spécialité Génie Logiciel." }
    
    , Background
      { date        = "2016 - 2017"
      , designation = "Licence Informatique à l'Université de Bordeaux (L3)." }

    , Background
      { date        = "2013 - 2015"
      , designation = "DUT Informatique à l'IUT de Bordeaux." }

    , Background
      { date        = "2013"
      , designation = "BAC S spécialité Mathématiques." } ]
  
  , publications = [pub]

  , languages =
    [ Language
      { language = []
      , status   = "CEFR B2 (niveau intermédiaire avancé). Lecture quotidienne d'articles techniques et de documentation." } ]

  , skills =
    [[ Skill
       { skill   = "Haskell"
       , details = "Grand intérêt. Plusieurs projets réalisés. Expérience de stage. Bonne maîtrise du langage de base." }

     , Skill
       { skill   = "C++"
       , details = "Intérêt. Plusieurs projets. Expérience de stage. Bonne maîtrise." }

     , Skill
       { skill   = "Java"
       , details = "Plusieurs projets. Expérience professionnelle. Bonne maîtrise." }
              
     , Skill
       { skill   = "Scala"
       , details = "Grand intérêt. Expérience professionnelle. Maîtrise correcte." }

     , Skill
       { skill   = "Rust"
       , details = "Grand intérêt. Maîtrise correcte." }

     , Skill
       { skill   = "C"
       , details = "Plusieurs projets. Maîtrise correcte." }

     , Skill
       { skill   = "Python"
       , details = "Expérience de stage. Maîtrise correcte." }
     
     , Skill
       { skill   = "JavaScript"
       , details = "Notions." } ]
    
    ,[ Skill
       { skill   = "GNU/Linux"
       , details = "Bonne connaissance et utilisation quotidienne." }
    
     , Skill
       { skill   = "Nix/NixOS"
       , details = "Grand intérêt et utilisation quotidienne. Maîtrise correcte." }

     , Skill
       { skill   = "Git"
       , details = "Bonne maîtrise." } ]

    ,[ Skill
       { skill   = "CSS3"
       , details = "Intérêt. Plusieurs projets. Bonne maîtrise." }

     , Skill
       { skill   = "XHTML5"
       , details = "Maîtrise correcte." } ]

    ,[ Skill
       { skill   = []
       , details = "Adepte du logiciel libre. Curieux, culture approfondie en informatique." } ]]

  , hobbies =
    [ Hobby
      { hobby = "Musique"
      , hobbyDetails = "batterie, piano, MAO, musique algorithmique" }

    , Hobby
      { hobby = "Ski alpin"
      , hobbyDetails = "bon niveau" }

    , Hobby
      { hobby = "Photographie"
      , hobbyDetails = "macro, pose longue" } ]
  
  , references = [chauve, fijalkow, dialo, bourqui] }

pub = Publication
  { authors = [("Joris","Sansen"), ("Gaëlle","Richer"), ("Timothée","Jourde"), ("Frédéric","Lalanne"), ("David","Auber"), ("Romain","Bourqui")]
  , title   = "Visual Exploration of Large Multidimensional Data Using Parallel Coordinates on Big Data Infrastructure"
  , journal = "Informatics"
  , pubDate = "12 juillet 2017"
  , pubUrl  = "www.mdpi.com/2227-9709/4/3/21" }

chauve = Reference
  { name = ("Cedric","Chauve")
  , role = "Professeur au Département de Mathématiques de l'Université Simon Fraser"
  , mail = "cedric.chauve@sfu.ca" }

fijalkow = Reference
  { name = ("Nathanaël","Fijalkow")
  , role = "Chercheur CNRS au LaBRI (LAboratoire Bordelais de Recherche en Informatique), équipe Méthodes Formelles"
  , mail = "nathanael.fijalkow@labri.fr" }
  
dialo = Reference
  { name = ("Gayo","Dialo")
  , role = "Maître de conférence à l'ISPED, équipe ERIAS (Institut de Santé Publique, d'Épidémiologie et de Développement ; Équipe de Recherche en Informatique Appliquée à la Santé)"
  , mail = "gayo.diallo@u-bordeaux.fr" }

bourqui = Reference
  { name = ("Romain","Bourqui")
  , role = "Maître de conférence au LaBRI, équipe EVADoMe (Exploration Visuelle et Analytique de DOnnées MassivEs)"
  , mail = "bourqui@labri.fr" }
