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
  , occupation    = "Programmer"
  , email         = "timjrd@pm.me"
  , website       = ["github.com/timjrd"]
  , location      = "Paris, France"
  , phone         = ""
  , age           = "30 y/o"

  , introduction  = "Fond of everything computers and autodidact, I hold a master's degree, and a technical degree in computer science. Throughout my experiences as a software developer, a student, and a strong hobbyist, I have acquired skills in algorithmics and data structures, programming and software engineering; but also in desktop development, data visualization, front-ends, and Linux systems."

  , positions =
    [ Position
      { period      = ["since","June 2023"]
      , keywords    = ["C++", "Slint", "Embedded Linux", "Full remote", "Permanent"]
      , description = toRich "Software engineer position at Witekio. Front-end and middleware work on a demo showcasing Welma: an in-house embedded Linux distribution. Other middleware works for end customers."
      , posUrl      = "youtu.be/Ewj-gwSNXmc?t=36" }

    , Position
      { period      = ["September to","November 2022"]
      , keywords    = ["Rust", "Iced", "International", "Full remote", "Self-employed"]
      , description = toRich "Software engineer position at Kraken. Front-end work on Cryptowatch Desktop, a cross-platform trading terminal built with Iced: an in-house open-source GUI toolkit. International English-speaking team. Laid-off as part of a large-scale reduction in force."
      , posUrl      = "youtu.be/Ja2PDH8Py5g?t=115" }

    , Position
      { period      = ["November 2020","to July 2022"]
      , keywords    = ["C++", "JUCE", "MIDI/MPE", "Windows", "macOS", "iPadOS", "Permanent"]
      , description = toRich "Software developer position at Joué Music Instruments, manufacturer of an electronic musical instrument. Development of a cross-platform musical application controlled by the device: mainly front-end work and communication with the instrument through MIDI."
      , posUrl      = "youtu.be/C7f7ln0NPGc" }

    , Position
      { period      = ["April to","August 2019"]
      , keywords    = ["C++", "Python", "Bioinformatics", "Academia", "Internship"]
      , description = toRich "Final year internship at LaBRI, Computational Biology team (master's degree): implementation and benchmarking of a genetic sequences analysis program."
      , posUrl      = "github.com/timjrd/mrsep/tree/master/src/mrsep.ilp" }

    , Position
      { period      = ["June to","July 2018"]
      , keywords    = ["Haskell", "Academia", "Internship"]
      , description = toRich "Internship at LaBRI, Formal Methods team (master's degree, first year): design and implementation of a computer player for a generalization of the Mastermind board game."
      , posUrl      = "github.com/timjrd/mastermind" }

    , Position
      { period      = ["June to","July 2017"]
      , keywords    = ["Scala", "Scala.js", "Academia", "Contract"]
      , description = toRich "Software developer position at ISPED, ERIAS team: continuation of the previous project, in partnership with LaBRI (see below)."
      , posUrl      = [] }

    , Position
      { period      = ["March to","August 2016", "Contract"]
      , keywords    = ["Java", "Lucene", "GWT", "Academia"]
      , description = toRich "Software developer position at ISPED, ERIAS team: development of an online discussion forums analysis system targeted at spotting medication misuse trends, with a Web-based visualization application."
      , posUrl      = [] }

    , Position
      { period      = ["April to","May 2015", "Internship"]
      , keywords    = ["C++", "OpenGL", "GLSL", "Scala", "Academia"]
      , description = toRich "Internship at LaBRI, EVADoMe team (technical degree): implementation of a massive data visualization application based on parallel coordinates, with a distributed backend infrastructure. This work has provided some basis for a scientific publication (see below)."
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
      , status   = "See position at Kraken (international English-speaking team). Daily reading of technical articles and documentation." } ]

  , skills =
    [[ Skill
       { skill   = ["Rust"]
       , details = "Very interested. Work experience. Good command." }

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
       , details = "Very interested. Good general knowledge. Daily usage." }

     , Skill
       { skill   = ["Git"]
       , details = "Interested. Work experience. Good command." }

     , Skill
       { skill   = ["Nix/NixOS"]
       , details = "Very interested. Good command." }

     , Skill
       { skill   = ["CSS/HTML"]
       , details = "Interested. Decent command." }

     , Skill
       { skill   = ["Bash"]
       , details = "Good command, unfortunately." }

     , Skill
       { skill   = ["Emacs"]
       , details = "Stockholm syndrome." } ]

    ,[ Skill
       { skill   = []
       , details = "Free Software enthusiast, interested by business models involved in open-source. Inquisitive, in-depth computer science knowledge. Very interested by cryptography, compilers, and the Web as a full-fledged alternative to native platforms, with initiatives such as WebAssembly." } ]]

  , hobbies =
    [[ Hobby
       { hobby = "Alpine skiing"
       , hobbyDetails = "Good level." }

     , Hobby
       { hobby = "Inline skating"
       , hobbyDetails = "Decent level. Steady training." }

     , Hobby
       { hobby = "Cooking"
       , hobbyDetails = "Vegetarian dishes." }

    , Hobby
       { hobby = "Music"
       , hobbyDetails = "Viola, drums, percussion, piano." }

     , Hobby
       { hobby = "Politics"
       , hobbyDetails = "Strong supporter of the European integration." } ]

    ,[ Hobby
       { hobby = []
       , hobbyDetails = "Went to Gabon, Japan, Senegal, United States, Turkey, New Caledonia, Italy, United Kingdom, Spain, Belgium." } ]

    ,[ Hobby
       { hobby = []
       , hobbyDetails = "Driving licence (permis B)." } ]]

  , references = []

  , projects =
    [ Project
      { projKeywords    = ["Haskell", "Generative music", "Sound synthesis"]
      , projDescription = "Software producing a musical audio stream that is randomly generated (both melodies and timbres). Done from scratch."
      , projUrl         = "github.com/timjrd/automagicsynth" }

    , Project
      { projKeywords    = ["Haskell", "Web scraping", "WebExtensions"]
      , projDescription = "Metasearch engine for online videos (CLI and Web GUI). Results are sorted by quality estimation, and duration of the videos."
      , projUrl         = "github.com/timjrd/scrapeaming" }

    , Project
      { projKeywords    = ["Rust", "Simulation"]
      , projDescription = "Barnes–Hut N-body simulation mixed with a stencil code, producing an artistic video. Done from scratch."
      , projUrl         = "github.com/timjrd/stencil-n-body.rs" } ]}

pub = Publication
  { authors = [("Joris","Sansen"), ("Gaëlle","Richer"), ("Timothée","Jourde"), ("Frédéric","Lalanne"), ("David","Auber"), ("Romain","Bourqui")]
  , title   = "Visual Exploration of Large Multidimensional Data Using Parallel Coordinates on Big Data Infrastructure"
  , journal = "Informatics"
  , pubDate = "12 July 2017"
  , pubUrl  = "mdpi.com/2227-9709/4/3/21" }
