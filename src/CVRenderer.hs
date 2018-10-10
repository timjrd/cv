{-# LANGUAGE OverloadedStrings #-}

module CVRenderer (renderCV, compactLayout) where

import Prelude hiding (div)

import Data.List
import Data.Maybe
import Data.Typeable

import Data.ByteString.Lazy (ByteString)

import qualified Text.Blaze.XHtml5 as H
import qualified Text.Blaze.XHtml5.Attributes as A
import Text.Blaze.XHtml5 hiding (map, title, style, details)
import Text.Blaze.XHtml5.Attributes hiding (name, title, lang, id)
import Text.Blaze.Html.Renderer.Utf8

import CV
import Rich

renderCV :: (CV -> Html) -> CV -> (String,ByteString)
renderCV f cv = (,) (lang cv) $ renderHtml $ do
  docType
  html !A.lang (stringValue $ lang cv) $ do
    H.head $ do
      meta !charset "utf-8"
      link !rel "stylesheet" !href (stringValue $ stylesheet cv)
      H.title $ toHtml $ author cv
    body $ (f $ preprocess cv)

compactLayout :: CV -> Html
compactLayout cv = do
  headerH       cv
  introductionH cv
  positionsH    cv
  div!s $ do
    backgroundsH cv
    div $ do
      publicationsH cv
      languagesH    cv
  div!s $ do
    skillsH     cv
    referencesH cv
    
headerH :: CV -> Html
headerH cv = header!s $ do
  img !alt (stringValue $ hPortrait cv) !src "http://image.noelshack.com/fichiers/2016/47/1480067879-bob.png"
  div $ do
    h1 $ toHtml $ author     cv
    h2 $ toHtml $ occupation cv
    div!s $ do
      div $ do
        a !href (stringValue $ "mailto:" ++ email cv) $ toHtml $ email cv
        div $ toHtml $ phone cv
      div $ toHtml $ age cv

introductionH :: CV -> Html
introductionH = p . toHtml . introduction

positionsH :: CV -> Html
positionsH cv = section $ do
  h3 $ toHtml $ hPositions cv
  table $ mapM_ f $ positions cv
  where
    f x = tr $ do
      th $ toHtml $ period x
      td $ do
        ul $ mapM_ (li . toHtml) $ keywords x
        p $ foldRich' cv $ description x
        a !href (stringValue $ posUrl x) $ toHtml $ posUrl x

backgroundsH :: CV -> Html
backgroundsH cv = section $ do
  h3 $ toHtml $ hBackgrounds cv
  table $ mapM_ f $ backgrounds cv
  where
    f x = tr $ do
      th $ toHtml $ date x
      td $ toHtml $ designation x
    
publicationsH :: CV -> Html
publicationsH cv = section $ do
  h3 $ toHtml $ hPublications cv
  table $ mapM_ f $ publications cv
  where
    f x = tr $ do
      td $ indexOf cv x
      th $ toHtml $ pubDate x
      td $ do
        sequence_
          $ intersperse ", "
          $ map nameH
          $ authors x
        ". "
        "“" >> toHtml (title x) >> "”. "
        em (toHtml $ journal x) >> ". "
        a !href (stringValue $ pubUrl x) $ toHtml $ pubUrl x

languagesH :: CV -> Html  
languagesH cv = section $ do
  h3 $ toHtml $ hLanguages cv
  table $ mapM_ f $ languages cv
  where
    f x = tr $ do
      th $ toHtml $ language x
      td $ toHtml $ status x

skillsH :: CV -> Html
skillsH cv = section $ do
  h3 $ toHtml $ hSkills cv
  mapM_ (table . mapM_ f) $ skills cv
  where
    f x = tr $ do
      td !class_ "level" $ div !style style' $ ""
      th $ toHtml $ skill x
      td $ toHtml $ details x
        where
          style' = stringValue
            $ "width:" ++ (show $ round $ 100 * level x) ++ "%;"

referencesH :: CV -> Html  
referencesH cv = section $ do
  h3 $ toHtml $ hReferences cv
  table $ mapM_ f $ references cv
  where
    f x = tr $ do
      td $ indexOf cv x
      td $ do
        nameH  (name x) >> ", "
        toHtml (role x) >> ", "
        a !href (stringValue $ "mailto:" ++ mail x) $ toHtml $ mail x
        "."

nameH :: (String,String) -> Html
nameH (a,b) = do
  H.span !class_ "firstname" $ toHtml a
  H.span !class_ "lastname"  $ toHtml b

s = class_ "split"

index :: CV -> [Ref]
index cv = map Ref (publications cv) ++ map Ref (references cv)

indexOf :: (Eq a, Typeable a) => CV -> a -> Html
indexOf cv x = sup $ toHtml
  $ maybe (error "indexOf: ref not found") id
  $ findIndex (Ref x ==) $ index cv
  
foldRich' :: CV -> Rich -> Html
foldRich' cv = foldRich toHtml (sup . toHtml) (index cv)

