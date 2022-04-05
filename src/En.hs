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
  , hHobbies      = "Hobbies & Misc."
  , hProjects     = "Personal Projects"

  , author        = "Timothée Jourde"
  , occupation    = "Software engineer"
  , email         = "timjrd@netc.fr"
  , website       = ["timjrd.github.io", "github.com/timjrd"]
  , location      = "Bordeaux, France"
  , phone         = "+33 6 79 50 56 22"
  , age           = "27 y/o"

  , introduction  = "Fond of computer science and autodidact, I hold a master's degree, and a technical degree in computer science. Throughout my experiences as a software developer, a student, and a strong hobbyist, I have acquired skills in algorithmics and data structures, programming and software engineering; but also in data visualization and development of user interfaces."

  , positions =
    [ Position
      { period      = ["since","November","2020"]
      , keywords    = ["C++", "JUCE", "MIDI/MPE", "Windows", "macOS", "iPadOS"]
      , description = toRich "Software developer position at Joué Music Instruments, manufacturer of an expressive electronic musical instrument. Development of a native cross-platform musical application working with the instrument: mainly user interface and communication with the device through MIDI."
      , posUrl      = "jouemusic.com/en/pages/joue-play-app" }

    , Position
      { period      = ["April to","August 2019"]
      , keywords    = ["C++", "Python", "Gurobi", "Linear optimization", "Bioinformatics"]
      , description = toRich "Final year internship at LaBRI, Computational Biology team (master's degree, second year): implementation, evaluation, and enhancement of a genetic sequences analysis program, whose purpose is to identify among known strains of a bacterium, which ones are present in a biological sample and in which quantities. The genetic material of the sample being sequenced with a high‑throughput method."
      , posUrl      = "github.com/timjrd/mrsep/tree/master/src/mrsep.ilp" }

    , Position
      { period      = ["June to","July 2018"]
      , keywords    = ["Haskell", "AI"]
      , description = toRich "Internship at LaBRI, Formal Methods team (master's degree, first year): design and implementation of a computer player for the Mastermind board game."
      , posUrl      = "github.com/timjrd/mastermind" }

    , Position
      { period      = ["June to","July 2017"]
      , keywords    = ["Scala", "Scala.js", "D3.js"]
      , description = toRich "Software developer position at ISPED, ERIAS team: continuation of the previous project, in partnership with LaBRI (see below)."
      , posUrl      = [] }

    , Position
      { period      = ["March to","August 2016"]
      , keywords    = ["Java", "Lucene", "GWT", "Data mining", "Semantic Web"]
      , description = toRich "Software developer position at ISPED, ERIAS team: development of an online forums analysis system targeted at spotting medications misuses by the population, with a web visualization application."
      , posUrl      = [] }

    , Position
      { period      = ["April to","May 2015"]
      , keywords    = ["C++", "OpenGL", "GLSL", "Scala", "Spark", "Big data"]
      , description = toRich "Internship at LaBRI, EVADoMe team (technical degree): implementation of a massive data visualization application based on parallel coordinates, with a distributed backend infrastructure. This work has provided the basis for a publication (see below)."
      , posUrl      = [] } ]

  , backgrounds =
    [ Background
      { date        = "2017 to 2019"
      , designation = "Computer science master's degree at University of Bordeaux, software engineering specialisation." }

    , Background
      { date        = "2016 to 2017"
      , designation = "Computer science bachelor's degree at University of Bordeaux (L3)." }

    , Background
      { date        = "2013 to 2015"
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
       { skill   = ["Rust"]
       , details = "Very interested. Good command." }

     , Skill
       { skill   = ["C++"]
       , details = "Interested. Work experience. Good command." }

     , Skill
       { skill   = ["Haskell"]
       , details = "Very interested. Internship experience. Good command." }

     , Skill
       { skill   = ["Java"]
       , details = "Work experience. Good command." }

     , Skill
       { skill   = ["Scala"]
       , details = "Very interested. Work experience. Decent command." }

     , Skill
       { skill   = ["C"]
       , details = "Decent command." }

     , Skill
       { skill   = ["Python"]
       , details = "Internship experience. Decent command." }

     , Skill
       { skill   = ["JavaScript"]
       , details = "Basic command." } ]

    ,[ Skill
       { skill   = ["Linux"]
       , details = "Interested. Good knowledge and daily usage." }

     , Skill
       { skill   = ["Git"]
       , details = "Interested. Work experience. Good command." }

     , Skill
       { skill   = ["Nix/NixOS"]
       , details = "Very interested. Decent command." }

     , Skill
       { skill   = ["CSS/HTML"]
       , details = "Interested. Good command." }

     , Skill
       { skill   = ["Bash"]
       , details = "Good command, unfortunately." } ]

    ,[ Skill
       { skill   = []
       , details = "Free Software enthusiast, interested by business models involved in open‑source. Inquisitive, in-depth computer science knowledge." } ]]

  , hobbies =
    [[ Hobby
       { hobby = "Music"
       , hobbyDetails = "Drums, percussion, piano." }

     , Hobby
       { hobby = "Alpine skiing"
       , hobbyDetails = "Good level." }

     , Hobby
       { hobby = "Cooking"
       , hobbyDetails = "Vegetarian dishes." } ]

    ,[ Hobby
       { hobby = []
       , hobbyDetails = "Went to Gabon, Senegal, Japan, United States, New Caledonia, England, Italy, Spain, Belgium." } ]

    ,[ Hobby
       { hobby = []
       , hobbyDetails = "Driving licence (permis B), have a car." } ]]

  , references = []

  , projects =
    [ Project
      { projKeywords    = ["Haskell", "AI", "Generative music", "Sound synthesis"]
      , projDescription = "Software producing a musical audio stream that is randomly generated (both melodies and timbres). Done from scratch."
      , projUrl         = "github.com/timjrd/automagicsynth" }

    , Project
      { projKeywords    = ["Haskell", "Web scraping", "WebExtensions"]
      , projDescription = "Metasearch engine for online videos. The results are sorted by quality estimation and duration of the videos. A web-based graphical user interface is available."
      , projUrl         = "github.com/timjrd/scrapeaming" }

    , Project
      { projKeywords    = ["Rust", "Simulation"]
      , projDescription = "Barnes–Hut N-body simulation on a grid together with a stencil code producing an artistic video. Done from scratch."
      , projUrl         = "github.com/timjrd/stencil-n-body.rs" } ]}

pub = Publication
  { authors = [("Joris","Sansen"), ("Gaëlle","Richer"), ("Timothée","Jourde"), ("Frédéric","Lalanne"), ("David","Auber"), ("Romain","Bourqui")]
  , title   = "Visual Exploration of Large Multidimensional Data Using Parallel Coordinates on Big Data Infrastructure"
  , journal = "Informatics"
  , pubDate = "12 July 2017"
  , pubUrl  = "www.mdpi.com/2227-9709/4/3/21" }
