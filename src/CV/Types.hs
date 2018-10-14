module CV.Types where

import Data.Typeable
-- import Data.String
import Data.List

import CV.Rich

data CV = CV { lang          :: String
             , hLang         :: String
             , hPortrait     :: String
             , hPositions    :: String
             , hBackgrounds  :: String
             , hPublications :: String
             , hLanguages    :: String
             , hSkills       :: String
             , hReferences   :: String
             
             , author        :: String
             , occupation    :: String
             , email         :: String
             , website       :: String
             , phone         :: String
             , age           :: String
             
             , introduction  :: String
             , positions     :: [Position]
             , backgrounds   :: [Background]
             , publications  :: [Publication]
             , languages     :: [Language]
             , skills        :: [[Skill]]
             , references    :: [Reference] }
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

data Skill = Skill { level   :: Rational
                   , skill   :: String
                   , details :: String }
  deriving Eq

data Reference = Reference { name :: (String,String)
                           , role :: String
                           , mail :: String }
  deriving (Eq, Typeable)

preprocess :: CV -> CV
preprocess cv = cv { publications = pubs'
                   , references   = refs' }
                   -- , skills       = skills' }
  where
    pubs'   = nub $ publications cv ++ concatMap (fromRich . description) (positions cv)
    refs'   = nub $ references   cv ++ concatMap (fromRich . description) (positions cv)
    -- skills' = map normLevel $ skills cv
    -- normLevel x = x { level = (level x + lo) / (hi-lo) }
    -- lo = minimum $ map level $ skills cv
    -- hi = maximum $ map level $ skills cv
