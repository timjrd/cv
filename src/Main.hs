import CV

main = write en [fr]

en = fr { lang = "en", hLang = "english" }

fr = CV
  { lang          = "fr"
  , hLang         = "français"
  , hPortrait     = "portrait photographique"
  
  , hPositions    = "Expériences professionnelles"
  , hBackgrounds  = "Formations"
  , hPublications = "Publication"
  , hLanguages    = "Langues"
  , hSkills       = "Compétences"
  , hReferences   = "Références"

  , author        = "Timothée Jourde"
  , occupation    = "Étudiant en Master Informatique"
  , email         = "timothee.jourde@u-bordeaux.fr"
  , website       = "timjrd.github.io/cv"
  , phone         = "06 79 50 56 22"
  , age           = "23 ans"

  , introduction  = "Passionné, autodidacte et productif, à la recherche d'un stage de fin d'études afin de professionnaliser mon intêret pour la programmation fonctionnelle."
  
  , positions =
    [ Position
      { period      = ("juin - juillet","2018")
      , keywords    = ["Haskell", "AI"]
      , description = "Stage de première année de Master : réalisation d'un programme-joueur de Mastermind paramétrique. Encadré par " ? gimbert_fr ? " et " ? fijalkow_fr ? "."
      , posUrl      = "github.com/timjrd/mastermind" }

    , Position
      { period      = ("juin - juillet","2017")
      , keywords    = ["Scala", "Scala.js", "D3.js"]
      , description = toRich "Poste de développeur à l'ISPED, équipe ERIAS : poursuite du projet précédent en collaboration avec le LaBRI (voir ci-dessous)."
      , posUrl      = "" }
        
    , Position
      { period      = ("mars - août","2016")
      , keywords    = ["Java", "Lucene", "GWT", "Web Sémantique"]
      , description = "Poste de développeur à l'ISPED, équipe ERIAS : développement d'un système d'analyse automatique de forums de discussions en ligne afin d'identifier les mésusages des médicaments par la population, et d'une application web de visualisation. Encadré par " ? dialo_fr ? "."
      , posUrl      = "" }
        
    , Position
      { period      = ("avril - mai","2015")
      , keywords    = ["C++", "OpenGL", "GLSL", "Scala", "Spark", "Big data"]
      , description = "Stage de DUT au LaBRI, équipe EVADoMe : réalisation d'une application de visualisation de données massives basée sur les coordonnées parallèles et accompagnée d'un back-end sur architecture distribué. L'implémentation issue de ce stage a servis de base à une publication " ? pub_fr ? ". Encadré par " ? bourqui_fr ? "."
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
      { language = "Français"
      , status   = "Langue natale." }
        
    , Language
      { language = "Anglais"
      , status   = "Bon niveau général lu, écrit, parlé. Bon niveau technique : lecture quotidienne d'articles et de documentation. Section européenne anglais au lycée." } ]

  , skills =
    [[ Skill
       { level   = 1
       , skill   = "Haskell"
       , details = "Grand intêret. Principalement focalisé sur ce langage. Plusieurs projets réalisés. Expérience de stage. Bonne maîtrise du langage de base. Approfondissements réguliers." }

     , Skill
       { level   = 0
       , skill   = "C++"
       , details = "Intêret, plusieurs projets, expérience de stage, bonne maîtrise." }

     , Skill
       { level   = 0
       , skill   = "Java"
       , details = "Plusieurs projets, expérience professionnelle, bonne maîtrise." }
        
     , Skill
       { level   = 0
       , skill   = "C"
       , details = "Plusieurs projets, maîtrise correct." }
      
     , Skill
       { level   = 0
       , skill   = "Scala"
       , details = "Grand intêret, expérience professionnelle, maîtrise correct." } ]

    ,[ Skill
       { level   = 0
       , skill   = "GNU/Linux"
       , details = "Bonne connaissance et utilisation quotidienne." }
    
     , Skill
       { level   = 0
       , skill   = "Nix/nixpkgs/NixOS"
       , details = "Grand intêret et utilisation quotidienne. Maîtrise correct." }

     , Skill
       { level   = 0
       , skill   = "Git"
       , details = "Bonne maîtrise." } ]

    ,[ Skill
       { level   = 0.9
       , skill   = "CSS3"
       , details = "Intêret, plusieurs projets, bonne maîtrise." }

     , Skill
       { level   = 0.4
       , skill   = "XHTML5"
       , details = "Maîtrise correct." } ]

     ,[ Skill
       { level   = 0
       , skill   = ""
       , details = "Adepte du logiciel libre. Curieux, culture approfondie en informatique." } ]]

  , references = [bourqui_fr, dialo_fr, gimbert_fr, fijalkow_fr]
  }

pub_fr = Publication
  { authors = [("Joris","Sansen"), ("Gaëlle","Richer"), ("Timothée","Jourde"), ("Frédéric","Lalanne"), ("David","Auber"), ("Romain","Bourqui")]
  , title   = "Visual Exploration of Large Multidimensional Data Using Parallel Coordinates on Big Data Infrastructure"
  , journal = "Informatics"
  , pubDate = "12 juillet 2017"
  , pubUrl  = "www.mdpi.com/2227-9709/4/3/21" }

bourqui_fr = Reference
  { name = ("Romain","Bourqui")
  , role = "Maître de conférence au LaBRI, équipe EVADoMe (LAboratoire Bordelais de Recherche en Informatique ; Exploration Visuelle et Analytique de DOnnées MassivEs)"
  , mail = "bourqui@labri.fr" }

dialo_fr = Reference
  { name = ("Gayo","Dialo")
  , role = "Maître de conférence à l'ISPED, équipe ERIAS (Institut de Santé Publique, d'Épidémiologie et de Développement ; Equipe de Recherche en Informatique Appliquée à la Santé)"
  , mail = "gayo.diallo@u-bordeaux.fr" }

gimbert_fr = Reference
  { name = ("Hugo","Gimbert")
  , role = "Chercheur CNRS au LaBRI"
  , mail = "hugo.gimbert@labri.fr" }

fijalkow_fr = Reference
  { name = ("Nathanaël","Fijalkow")
  , role = "Chercheur CNRS au LaBRI"
  , mail = "nathanael.fijalkow@labri.fr" }


