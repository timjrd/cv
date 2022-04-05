module Cv (module Types, write, toRich, (?)) where

import System.Environment

import Data.List
import qualified Data.ByteString.Lazy as BS
import Data.ByteString.Lazy (ByteString)

import qualified Cv.Types as Types hiding (preprocess)
import Cv.Types
import Cv.Renderer
import Cv.Rich

write :: String -> Cv -> [Cv] -> IO ()
write prefix cv cvs = do
  let f x  = BS.writeFile ("lang/" ++ prefix ++ lang x ++ ".html")
           $ renderCv prefix compactLayout x cvs'
      cv'  = preprocess cv
      cvs' = map preprocess $ nub $ cv:cvs
  BS.writeFile "index.html" $ indexHtml prefix cv' cvs'
  mapM_ f cvs'
