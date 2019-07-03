module Cv.Types where

import Data.Typeable
import Data.List

import Cv.Rich

data Cv = Cv { lang          :: String
             , hLang         :: String
             , hPortrait     :: String
             , hPositions    :: String
             , hBackgrounds  :: String
             , hPublications :: String
             , hLanguages    :: String
             , hSkills       :: String
             , hReferences   :: String
             , hHobbies      :: String
             
             , author        :: String
             , occupation    :: String
             , email         :: String
             , website       :: [String]
             , phone         :: String
             , age           :: String
             
             , introduction  :: String
             , positions     :: [Position]
             , backgrounds   :: [Background]
             , publications  :: [Publication]
             , languages     :: [Language]
             , skills        :: [[Skill]]
             , references    :: [Reference]
             , hobbies       :: [Hobby] }
  deriving Eq

data Position = Position { period      :: (String,String)
                         , keywords    :: [String]
                         , description :: Rich
                         , posUrl      :: String }
  deriving Eq

data Background = Background { date        :: String
                             , designation :: String }
  deriving Eq

data Publication = Publication { authors :: [(String,String)]
                               , title   :: String
                               , journal :: String
                               , pubDate :: String
                               , pubUrl  :: String }
  deriving (Eq, Typeable)

data Language = Language { language :: String
                         , status   :: String }
  deriving Eq

data Skill = Skill { skill   :: String
                   , details :: String }
  deriving Eq

data Reference = Reference { name :: (String,String)
                           , role :: String
                           , mail :: String }
  deriving (Eq, Typeable)

data Hobby = Hobby { hobby        :: String
                   , hobbyDetails :: String }
  deriving Eq

preprocess :: Cv -> Cv
preprocess cv = cv { publications = pubs'
                   , references   = refs' }
  where
    pubs'   = nub $ publications cv ++ concatMap (fromRich . description) (positions cv)
    refs'   = nub $ references   cv ++ concatMap (fromRich . description) (positions cv)
