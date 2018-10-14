module CV (module Types, write, toRich, (?)) where

import Data.List

import qualified Data.ByteString.Lazy as BS
import Data.ByteString.Lazy (ByteString)

import qualified CV.Types as Types hiding (preprocess)
import CV.Types
import CV.Renderer
import CV.Rich

write :: CV -> [CV] -> IO ()
write cv cvs = do
  BS.writeFile "index.html" $ indexHtml cv' cvs'
  mapM_ f cvs'
  where
    f x  = BS.writeFile ("lang/" ++ lang x ++ ".html")
           $ renderCV compactLayout x cvs'
    cv'  = preprocess cv
    cvs' = map preprocess $ nub $ cv:cvs
