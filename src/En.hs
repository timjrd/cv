module En (en) where

import Cv

en = Cv
  { lang          = "en"
  , hLang         = "English"
  , hPortrait     = "portrait photography"
  
  , hPositions    = "Work Experience"
  , hBackgrounds  = "Education"
  , hPublications = "Publication"
  , hLanguages    = "Languages"
  , hSkills       = "Skills"
  , hReferences   = "References"

  , author        = "Timothée Jourde"
  , occupation    = "Computer Science Master’s Student"
  , email         = "timothee.jourde@u-bordeaux.fr"
  , website       = "timjrd.github.io/cv"
  , phone         = "+33 6 79 50 56 22"
  , age           = "twenty-three"

  , introduction  = "Fond of computer science and autodidact, I'm looking for a final year internship starting on April 2019. I'm mainly focused on functional programming."
  
  , positions =
    [ Position
      { period      = ("June - July","2018")
      , keywords    = ["Haskell", "AI"]
      , description = "Internship at LaBRI, Formal Methods team (master's degree, first year): design and implementation of a parametric Mastermind computer player. Supervised by " ? gimbert ? " and " ? fijalkow ? "."
      , posUrl      = "github.com/timjrd/mastermind" }

    , Position
      { period      = ("June - July","2017")
      , keywords    = ["Scala", "Scala.js", "D3.js"]
      , description = toRich "Software developer position at ISPED, ERIAS team: continuation of the previous project, in partnership with LaBRI (see below)."
      , posUrl      = "" }
        
    , Position
      { period      = ("March - August","2016")
      , keywords    = ["Java", "Lucene", "GWT", "Data mining", "Semantic Web"]
      , description = "Software developer position at ISPED, ERIAS team: development of an online forums analysis system targeted at spotting medications misuses by the population, with a web visualization application. Supervised by " ? dialo ? "."
      , posUrl      = "" }
        
    , Position
      { period      = ("April - May","2015")
      , keywords    = ["C++", "OpenGL", "GLSL", "Scala", "Spark", "Big data"]
      , description = "Internship at LaBRI, EVADoMe team (technical degree): implementation of a massive data visualization application based on parallel coordinates, with a distributed backend infrastructure. Supervised by " ? bourqui ? ". This work has provided the basis for a publication " ? pub ? "."
      , posUrl      = "" } ]

  , backgrounds =
    [ Background
      { date        = "currently"
      , designation = "Computer science master's degree at University of Bordeaux, software engineering specialisation (M2, second year)." }
      
    , Background
      { date        = "2017 - 2018"
      , designation = "Computer science master's degree at University of Bordeaux (M1, first year)." }

    , Background
      { date        = "2016 - 2017"
      , designation = "Computer science bachelor's degree at University of Bordeaux (L3, third year)." }

    , Background
      { date        = "2013 - 2015"
      , designation = "Computer science technical degree (DUT) at Bordeaux University Institute of Technology (IUT)." }

    , Background
      { date        = "2013"
      , designation = "High school diploma, mathematics specialisation (BAC S)." } ]
  
  , publications = []

  , languages =
    [ Language
      { language = "French"
      , status   = "Native language." }
        
    , Language
      { language = "English"
      , status   = "Bon niveau général lu, écrit, parlé. Bon niveau technique : lecture quotidienne d'articles et de documentation. Section européenne anglais au lycée." } ]

  , skills =
    [[ Skill
       { skill   = "Haskell"
       , details = "Grand intêret. Principalement focalisé sur ce langage. Plusieurs projets réalisés. Expérience de stage. Bonne maîtrise du langage de base. Approfondissements réguliers." }

     , Skill
       { skill   = "C++"
       , details = "Intêret, plusieurs projets, expérience de stage, bonne maîtrise." }

     , Skill
       { skill   = "Java"
       , details = "Plusieurs projets, expérience professionnelle, bonne maîtrise." }
        
     , Skill
       { skill   = "C"
       , details = "Plusieurs projets, maîtrise correct." }
      
     , Skill
       { skill   = "Scala"
       , details = "Grand intêret, expérience professionnelle, maîtrise correct." } ]

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
       , details = "Intêret, plusieurs projets, bonne maîtrise." }

     , Skill
       { skill   = "XHTML5"
       , details = "Maîtrise correct." } ]

    ,[ Skill
       { skill   = ""
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
  
