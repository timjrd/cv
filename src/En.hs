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
  , hHobbies      = "Hobbies"

  , author        = "Timothée Jourde"
  , occupation    = "Software engineer"
  , email         = "timjrd@netc.fr"
  , website       = ["timjrd.github.io", "github.com/timjrd"]
  , phone         = "+33 6 79 50 56 22"
  , age           = "25 y/o"

  , introduction  = "Fond of computer science and autodidact, I hold a master's degree, and a technical degree in computer science. Throughout my experiences as a software developer, a student, and a strong hobbyist, I have acquired specific skills in algorithmics, functional programming, software engineering, data visualization, and web development."

  , positions =
    [ Position
      { period      = ("April - August","2019")
      , keywords    = ["C++", "Python", "Gurobi", "Linear optimization", "Bioinformatics"]
      , description = "Final year internship at LaBRI, Computational Biology team (master's degree, second year): implementation, evaluation, and enhancement of a genetic sequences analysis program, whose purpose is to identify among known strains of a bacterium, which ones are present in a biological sample and in which quantities. The genetic material of the sample being sequenced with a high-throughput method. Supervised by " ? chauve ? "."
      , posUrl      = [] }

    , Position
      { period      = ("June - July","2018")
      , keywords    = ["Haskell", "AI"]
      , description = "Internship at LaBRI, Formal Methods team (master's degree, first year): design and implementation of a parametric Mastermind computer player. Supervised by " ? fijalkow ? "."
      , posUrl      = "github.com/timjrd/mastermind" }

    , Position
      { period      = ("June - July","2017")
      , keywords    = ["Scala", "Scala.js", "D3.js"]
      , description = toRich "Software developer position at ISPED, ERIAS team: continuation of the previous project, in partnership with LaBRI (see below)."
      , posUrl      = [] }

    , Position
      { period      = ("March - August","2016")
      , keywords    = ["Java", "Lucene", "GWT", "Data mining", "Semantic Web"]
      , description = "Software developer position at ISPED, ERIAS team: development of an online forums analysis system targeted at spotting medications misuses by the population, with a web visualization application. Supervised by " ? dialo ? "."
      , posUrl      = [] }

    , Position
      { period      = ("April - May","2015")
      , keywords    = ["C++", "OpenGL", "GLSL", "Scala", "Spark", "Big data"]
      , description = "Internship at LaBRI, EVADoMe team (technical degree): implementation of a massive data visualization application based on parallel coordinates, with a distributed backend infrastructure. Supervised by " ? bourqui ? ". This work has provided the basis for a publication " ? pub ? "."
      , posUrl      = [] } ]

  , backgrounds =
    [ Background
      { date        = "2017 - 2019"
      , designation = "Computer science master's degree at University of Bordeaux, software engineering specialisation." }

    , Background
      { date        = "2016 - 2017"
      , designation = "Computer science bachelor's degree at University of Bordeaux (L3)." }

    , Background
      { date        = "2013 - 2015"
      , designation = "Computer science technical degree (DUT) at Bordeaux University Institute of Technology (IUT)." }

    , Background
      { date        = "2013"
      , designation = "High school diploma, mathematics specialisation (BAC S)." } ]

  , publications = [pub]

  , languages =
    [ Language
      { language = "French"
      , status   = "Native language." }

    , Language
      { language = "English"
      , status   = "CEFR B2 (upper intermediate). Daily reading of technical articles and documentation." } ]

  , skills =
    [[ Skill
       { skill   = "Haskell"
       , details = "Very interested. Several projects. Internship experience. Good command." }

     , Skill
       { skill   = "Rust"
       , details = "Very interested. Several projects. Good command." }

     , Skill
       { skill   = "C++"
       , details = "Interested. Several projects. Internship experience. Good command." }

     , Skill
       { skill   = "Java"
       , details = "Several projects. Work experience. Good command." }

     , Skill
       { skill   = "Scala"
       , details = "Very interested. Work experience. Decent command." }

     , Skill
       { skill   = "C"
       , details = "Several projects. Decent command." }

     , Skill
       { skill   = "Python"
       , details = "Internship experience. Decent command." }

     , Skill
       { skill   = "JavaScript"
       , details = "Basic command." } ]

    ,[ Skill
       { skill   = "GNU/Linux"
       , details = "Good knowledge and daily usage." }

     , Skill
       { skill   = "Nix/NixOS"
       , details = "Very interested. Daily usage. Decent command." }

     , Skill
       { skill   = "Git"
       , details = "Good command." } ]

    ,[ Skill
       { skill   = "CSS3"
       , details = "Interested. Several projects. Good command." }

     , Skill
       { skill   = "XHTML5"
       , details = "Decent command." } ]

    ,[ Skill
       { skill   = []
       , details = "Free Software enthusiast. Inquisitive, in-depth computer science knowledge." } ]]

  , hobbies =
    [ Hobby
      { hobby = "Music"
      , hobbyDetails = "drums, piano, computer music, algorithmic composition" }

    , Hobby
      { hobby = "Alpine skiing"
      , hobbyDetails = "good level" }

    , Hobby
      { hobby = "Photography"
      , hobbyDetails = "macro, long-exposure" } ]

  , references = [chauve, fijalkow, dialo, bourqui] }

pub = Publication
  { authors = [("Joris","Sansen"), ("Gaëlle","Richer"), ("Timothée","Jourde"), ("Frédéric","Lalanne"), ("David","Auber"), ("Romain","Bourqui")]
  , title   = "Visual Exploration of Large Multidimensional Data Using Parallel Coordinates on Big Data Infrastructure"
  , journal = "Informatics"
  , pubDate = "12 July 2017"
  , pubUrl  = "www.mdpi.com/2227-9709/4/3/21" }

chauve = Reference
  { name = ("Cedric","Chauve")
  , role = "Professor in the Department of Mathematics of Simon Fraser University"
  , mail = "cedric.chauve@sfu.ca" }

fijalkow = Reference
  { name = ("Nathanaël","Fijalkow")
  , role = "CNRS researcher at LaBRI (Bordeaux Laboratory for Computer Science Research), Formal Methods team"
  , mail = "nathanael.fijalkow@labri.fr" }

dialo = Reference
  { name = ("Gayo","Dialo")
  , role = "Associate professor at ISPED, ERIAS team (Bordeaux School of Public Health ; Computer Research Applied to Health)"
  , mail = "gayo.diallo@u-bordeaux.fr" }

bourqui = Reference
  { name = ("Romain","Bourqui")
  , role = "Associate professor at LaBRI, EVADoMe team (Visual Analytics and Interactive Exploration of Massive Data)"
  , mail = "bourqui@labri.fr" }
