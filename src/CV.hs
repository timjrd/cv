module CV where

import Data.String
import Data.List

import Rich

data CV = CV { stylesheet    :: String
             , lang          :: String
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
             , phone         :: String
             , age           :: String
             
             , introduction  :: String
             , positions     :: [Position]
             , backgrounds   :: [Background]
             , publications  :: [Publication]
             , languages     :: [Language]
             , skills        :: [[Skill]]
             , references    :: [Reference] }

data Position = Position { period      :: String
                         , keywords    :: [String]
                         , description :: Rich
                         , posUrl      :: String }

data Background = Background { date        :: String
                             , designation :: String }

data Publication = Publication { authors :: [(String,String)]
                               , title   :: String
                               , journal :: String
                               , pubDate :: String
                               , pubUrl  :: String }
  deriving Eq

data Language = Language { language :: String
                         , status   :: String }

data Skill = Skill { level   :: Rational
                   , skill   :: String
                   , details :: String }

data Reference = Reference { name :: (String,String)
                           , role :: String
                           , mail :: String }
  deriving Eq

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
