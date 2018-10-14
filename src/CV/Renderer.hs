{-# LANGUAGE OverloadedStrings #-}

module CV.Renderer (indexHtml, renderCV, compactLayout) where

import Data.String
import Data.List
import Data.Maybe
import Data.Typeable

import Data.ByteString.Lazy (ByteString)

import Text.Blaze.Internal (Attributable, Attribute)
import Text.Blaze.XHtml5   (Html, toHtml, toValue)
import qualified Text.Blaze.XHtml5            as H
import qualified Text.Blaze.XHtml5.Attributes as A
import Text.Blaze.Html.Renderer.Utf8

import CV.Types
import CV.Rich

indexHtml :: CV -> [CV] -> ByteString
indexHtml cv cvs = renderHtml $ do
  H.docType
  H.html ! A.lang (toValue $ lang cv) $ do
    H.head $ do
      H.meta ! A.charset "utf-8"
      H.title $ toHtml $ author cv
    H.body $ H.script $ do
      "var lang = navigator.language || navigator.userLanguage;"
      "switch (lang.substring(0,2)) {"          
      mapM_ (f case_) (delete cv cvs) >> f default_ cv
      "}"
        where
          f g x = let l = toHtml (lang x) in do
            g l
            "window.location = 'lang/" >> l >> ".html';"
            "break;"
          case_    l = "case '" >> l >> "':" :: Html
          default_ _ = "default:"            :: Html


renderCV :: (CV -> [CV] -> Html) -> CV -> [CV] -> ByteString
renderCV f cv cvs = renderHtml $ do
  H.docType
  H.html ! A.lang (toValue $ lang cv) $ do
    H.head $ do
      H.meta ! A.charset "utf-8"
      H.meta ! A.name "viewport" ! A.content "initial-scale=1"
      H.link ! A.rel "stylesheet" ! A.href "../res/style.prefix.min.css"
      H.title $ toHtml $ author cv
    H.body $ f cv cvs

compactLayout :: CV -> [CV] -> Html
compactLayout cv cvs = do
  navH cv cvs
  headerH cv
  introductionH cv
  columns .& shrink .$ do
    H.div $ do
      positionsH    cv
      skillsH       cv
    H.div $ do
      backgroundsH  cv
      publicationsH cv
      languagesH    cv
      referencesH   cv      

navH :: CV -> [CV] -> Html
navH cv cvs = columns .$ H.nav .! leaf $ pdf cv >> mapM_ htm (delete cv cvs)
  where
    htm x = H.a ! A.href (toValue $ lang x ++ ".html") $ toHtml $ hLang x
    pdf x = H.a ! A.href (toValue $ lang x ++ ".pdf")  $ "pdf"
      
headerH :: CV -> Html
headerH cv = H.header .! columns $ horizontal .& leaf .$ do
  H.img ! A.alt (toValue $ hPortrait cv) ! A.src "../res/portrait.png"
  H.div $ do
    H.div $ do
      H.h1 $ toHtml $ author     cv
      H.h2 $ toHtml $ occupation cv
    horizontal .$ do
      H.div $ do
        mailto $ email cv
        web .$ http $ website cv
        H.div $ toHtml $ phone cv
      H.div $ toHtml $ age cv

introductionH :: CV -> Html
introductionH cv = columns .& shrink .$ H.p .! leaf $ toHtml $ introduction cv

positionsH :: CV -> Html
positionsH cv = H.section .! leaf $ do
  H.h3 $ toHtml $ hPositions cv
  H.table $ mapM_ f $ positions cv
  where
    f x = H.tr $ do
      H.th $ let (a,b) = period x in toHtml a >> H.br >> toHtml b
      H.td $ do
        H.ul .! horizontal $ mapM_ (H.li . toHtml) $ keywords x
        H.p $ (foldRich' cv $ description x) >> " " >> (http $ posUrl x)

backgroundsH :: CV -> Html
backgroundsH cv = H.section .! leaf $ do
  H.h3 $ toHtml $ hBackgrounds cv
  H.table $ mapM_ f $ backgrounds cv
  where
    f x = H.tr $ do
      H.th $ toHtml $ date x
      H.td $ toHtml $ designation x
    
publicationsH :: CV -> Html
publicationsH cv = H.section .! leaf $ do
  H.h3 $ toHtml $ hPublications cv
  H.table $ mapM_ f $ publications cv
  where
    f x = H.tr $ do
      H.th $ label cv x
      H.td $ do
        sequence_
          $ intersperse ", "
          $ map nameH
          $ authors x
        ". "
        "“" >> toHtml (title x) >> "”. "
        H.em (toHtml $ journal x) >> ". "
        H.em (toHtml $ pubDate x) >> ". "
        http $ pubUrl x

languagesH :: CV -> Html  
languagesH cv = H.section .! leaf $ do
  H.h3 $ toHtml $ hLanguages cv
  H.table $ mapM_ f $ languages cv
  where
    f x = H.tr $ do
      H.th $ toHtml $ language x
      H.td $ toHtml $ status x

skillsH :: CV -> Html
skillsH cv = H.section .! leaf $ do
  H.h3 $ toHtml $ hSkills cv
  H.table
    $ mconcat
    $ intersperse trspace
    $ mapM_ f <$> skills cv
  where
    f x = H.tr $ do
      H.th $ toHtml $ skill x
      H.td $ toHtml $ details x
    trspace = H.tr .! space $ mempty

referencesH :: CV -> Html  
referencesH cv = H.section .! leaf $ do
  H.h3 $ toHtml $ hReferences cv
  H.table $ mapM_ f $ references cv
  where
    f x = H.tr $ do
      H.th $ label cv x
      H.td $ do
        nameH  (name x) >> ". "
        toHtml (role x) >> ". "
        mailto $ mail x

nameH :: (String,String) -> Html
nameH (a,b) = do
  H.span .! "firstname" $ toHtml a
  " "
  H.span .! "lastname"  $ toHtml b


newtype Class = Class [String]

instance IsString Class where
  fromString x = Class [x]

mailto :: String -> Html
mailto x = H.a ! A.href (toValue $ "mailto:" ++ x) $ toHtml x

http :: String -> Html
http x = H.a ! A.href (toValue $ "https://" ++ x) $ toHtml x

horizontal = "horizontal" :: Class
columns    = "columns"    :: Class
leaf       = "leaf"       :: Class
shrink     = "shrink"     :: Class
web        = "web"        :: Class
space      = "space"      :: Class
ref_       = "ref"        :: Class

infixl 2 .&
(.&) :: Class -> Class -> Class
(Class a) .& (Class b) = Class $ nub $ a ++ b

infixl 1 !
(!) :: Attributable h => h -> Attribute -> h
(!) = (H.!)

infixl 1 .!
(.!) :: Attributable h => h -> Class -> h
e .! (Class c) = e ! A.class_ (toValue $ intercalate " " c)

infixr 0 .$
(.$) :: Class -> Html -> Html
c .$ h = H.div .! c $ h

ref :: CV -> Ref -> Html
ref cv x = H.a .! ref_ ! A.href (toValue $ "#" ++ show id) $ toHtml id
  where id = indexOf cv x

label :: (Eq a, Typeable a) => CV -> a -> Html
label cv x = H.span .! ref_ ! A.id (toValue id) $ toHtml id
  where id = indexOf cv $ Ref x

indexOf :: CV -> Ref -> Int
indexOf cv x = (1+)
  $ maybe (error "indexOf: ref not found") id
  $ findIndex (x==)
  $ map Ref (publications cv)
  ++ map Ref (references cv)
  
foldRich' :: CV -> Rich -> Html
foldRich' = foldRich toHtml . ref

