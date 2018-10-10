{-# LANGUAGE OverloadedStrings #-}

module Main where

import qualified Data.ByteString.Lazy as BS

import CV
import CVRenderer
import Rich

main = mapM ((uncurry $ BS.writeFile . (++".html")) . renderCV layout) cvs

layout = compactLayout

cvs = [fr]

fr = CV
  { stylesheet    = "style.css"
  , lang          = "fr"
  , hPortrait     = "portrait photographique"
  
  , hPositions    = "Expériences professionnelles"
  , hBackgrounds  = "Formations"
  , hPublications = "Publication"
  , hLanguages    = "Anglais"
  , hSkills       = "Compétences"
  , hReferences   = "Références"

  , author        = "Timothée Jourde"
  , occupation    = "Étudiant en Master Informatique"
  , email         = "timothee.jourde@u-bordeaux.fr"
  , phone         = "06 79 50 56 22"
  , age           = "23 ans"

  , introduction  = "Passionné, autodidacte et productif, à la recherche d'un stage de fin d'études afin de professionnaliser mon intêret pour la programmation fonctionnelle."
  
  , positions =
      [ Position
        { period      = "juin - juillet 2017"
        , keywords    = ["Scala", "Scala.js", "D3.js"]
        , description = "Poste de développeur à l'ISPED (équipe ERIAS) : poursuite du projet précédent en collaboration avec le LaBRI (voir ci-dessous)."
        , posUrl      = "" }
        
      , Position
        { period      = "mars - août 2016"
        , keywords    = ["Java", "Lucene", "GWT", "Web Sémantique"]
        , description = "Poste de développeur dans l'équipe de recherche en informatique appliquée à la santé (ERIAS) de l'ISPED (institut de santé publique, d'épidémiologie et de développement) de Bordeaux : développement d'un système d'analyse automatique de forums de discussions afin d'identifier les mésusages des médicaments par la population, et d'une application web de visualisation."
        , posUrl      = "" }
        
      , Position
        { period      = "avril - mai 2015"
        , keywords    = ["C++", "OpenGL", "GLSL", "Scala", "Spark"]
        , description = "Stage de DUT au LaBRI (Laboratoire Bordelais de Recherche en Informatique) : réalisation d'une application de visualisation de données massives (big data) avec un front-end écrit en C++/OpenGL, et un back-end sur une architecture distribué écrit en Scala/Spark."
        , posUrl      = "" } ]

  , backgrounds =
      [ Background
        { date        = "actuellement"
        , designation = "Deuxième année de Master Informatique à l'Université de Bordeaux, spécialité Génie Logiciel" }
      
      , Background
        { date        = "2017 - 2018"
        , designation = "Première année de Master Informatique à l'Université de Bordeaux" }

      , Background
        { date        = "2016 - 2017"
        , designation = "Troisième année de Licence Informatique à l'Université de Bordeaux" }

      , Background
        { date        = "2013 - 2015"
        , designation = "DUT Informatique à l'IUT de Bordeaux" }

      , Background
        { date        = "2013"
        , designation = "BAC S spécialité Mathématiques" } ]
  
  , publications = [pub_fr]

  , languages =
      [ Language
        { language = "Français"
        , status   = "langue natale" }

      , Language
        { language = "Anglais"
        , status   = "Bon niveau général lu, écrit, parlé. Très bon niveau technique : lecture quotidienne d'articles et de documentation. Section européenne anglais au lycée." } ]

  , skills =
      [[ Skill
        { level   = 1
        , skill   = "Haskell"
        , details = "Passioné, principalement focalisé sur ce langage. Plusieurs projets réalisés. Expérience de stage. Bonne maîtrise du langage de base. Lectures et approfondissements réguliers." }

      , Skill
        { level   = 1
        , skill   = "C++"
        , details = "Plusieurs projets. Expérience de stage. Bonne maîtrise." }

      , Skill
        { level   = 0.8
        , skill   = "Java"
        , details = "Plusieurs projets. Expérience professionnelle. Bonne maîtrise." }
        
      , Skill
        { level   = 0.7
        , skill   = "C"
        , details = "Plusieurs projets. Maîtrise correct." }
      
      , Skill
        { level   = 0.5
        , skill   = "Scala"
        , details = "Expérience professionnelle. Maîtrise correct." }

      , Skill
        { level   = 0.9
        , skill   = "CSS3"
        , details = "Plusieurs projets. Bonne maîtrise." }

      , Skill
        { level   = 0.4
        , skill   = "XHTML5"
        , details = "Plusieurs projets. Maîtrise correct." } ]]

  , references = [bourqui_fr]
  }

pub_fr = Publication
  { authors = [("Joris","Sansen"), ("Gaëlle","Richer"), ("Timothée","Jourde"), ("Frédéric","Lalanne"), ("David","Auber"), ("Romain","Bourqui")]
  , title   = "Visual Exploration of Large Multidimensional Data Using Parallel Coordinates on Big Data Infrastructure"
  , journal = "Informatics"
  , pubDate = "12 juillet 2017"
  , pubUrl  = "https://www.mdpi.com/2227-9709/4/3/21" }

bourqui_fr = Reference
  { name = ("Romain","Bourqui")
  , role = "Maître de conférence au Laboratoire Bordelais de Recherche en Informatique (LaBRI)"
  , mail = "bourqui@labri.fr" }
