module Cv (module Types, write, toRich, (?)) where

import System.Environment

import Data.List
import qualified Data.ByteString.Lazy as BS
import Data.ByteString.Lazy (ByteString)

import qualified Cv.Types as Types hiding (preprocess)
import Cv.Types
import Cv.Renderer
import Cv.Rich

write :: Cv -> [Cv] -> IO ()
write cv cvs = do
  pdfPrefix <- maybe "" id <$> lookupEnv "PDF_PREFIX"
  let f x  = BS.writeFile ("lang/" ++ lang x ++ ".html")
           $ renderCv pdfPrefix compactLayout x cvs'
      cv'  = preprocess cv
      cvs' = map preprocess $ nub $ cv:cvs
  BS.writeFile "index.html" $ indexHtml cv' cvs'      
  mapM_ f cvs'
  
