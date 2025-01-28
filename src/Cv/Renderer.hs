{-# LANGUAGE OverloadedStrings #-}

module Cv.Renderer (indexHtml, renderCv, compactLayout) where

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

import Cv.Types
import Cv.Rich

indexHtml :: String -> Cv -> [Cv] -> ByteString
indexHtml prefix cv cvs = renderHtml $ do
  H.docType
  H.html ! A.lang (toValue $ lang cv) $ do
    H.head $ do
      H.meta ! A.charset "utf-8"
      pageTitle cv
    H.body $ H.script $ do
      "var lang = navigator.language || navigator.userLanguage;"
      "switch (lang.substring(0,2)) {"
      mapM_ (f case_) (delete cv cvs) >> f default_ cv
      "}"
        where
          f g x = let l = toHtml (lang x) in do
            g l
            "window.location = 'lang/" >> (toHtml prefix) >> l >> ".html';"
            "break;"
          case_    l = "case '" >> l >> "':" :: Html
          default_ _ = "default:"            :: Html

renderCv :: String -> (String -> Cv -> [Cv] -> Html) -> Cv -> [Cv] -> ByteString
renderCv prefix f cv cvs = renderHtml $ do
  H.docType
  H.html ! A.lang (toValue $ lang cv) $ do
    H.head $ do
      H.meta ! A.charset "utf-8"
      H.meta ! A.name "viewport" ! A.content "width=device-width, initial-scale=1.0"
      H.link ! A.rel "stylesheet" ! A.href "../res/style.min.css"
      H.meta ! A.name "description" ! (A.content $ toValue $ introduction cv)
      pageTitle cv
    H.body $ f prefix cv cvs

compactLayout :: String -> Cv -> [Cv] -> Html
compactLayout prefix cv cvs = do
  navH prefix cv cvs
  headerH cv
  introductionH cv
  columns .& shrink .$ do
    H.div $ do
      positionsH    cv
      backgroundsH  cv
      publicationsH cv
    H.div $ do
      skillsH       cv
      projectsH     cv
      languagesH    cv
      hobbiesH      cv
      -- referencesH   cv

navH :: String -> Cv -> [Cv] -> Html
navH prefix cv cvs = columns .$ H.nav .! leaf $ pdf cv >> mapM_ htm (delete cv cvs)
  where
    htm x = H.a ! A.href (toValue $ prefix ++ lang x ++ ".html") $ toHtml $ hLang x
    pdf x = H.a ! A.href (toValue $ prefix ++ permutation x ++ ".pdf") $ "PDF"
    permutation x = if lang x == "en" then "en-fr" else "fr-en"

headerH :: Cv -> Html
headerH cv = H.header .! columns $ horizontal .& leaf .$ do
  H.img ! A.alt (toValue $ hPortrait cv) ! A.src "../res/portrait.jpg"
  H.div $ do
    H.div $ do
      H.h1 $ toHtml $ author     cv
      H.h2 $ toHtml $ occupation cv
    horizontal .$ do
      H.div $ do
        mailto $ email cv
        mapM_ (\x -> web .$ http x) $ website cv
      H.div $ do
        H.div $ toHtml $ phone    cv
        H.div $ toHtml $ location cv
        H.div $ toHtml $ age      cv

introductionH :: Cv -> Html
introductionH cv = columns .& shrink .$ H.p .! leaf $ toHtml $ introduction cv

positionsH :: Cv -> Html
positionsH cv = H.section .! leaf $ do
  H.h3 $ toHtml $ hPositions cv
  H.table $ mapM_ f $ positions cv
  where
    f x = H.tr $ do
      H.th $ mapM_ (\x -> toHtml x >> H.br) $ period x
      H.td $ do
        H.ul .! horizontal $ mapM_ (H.li . toHtml) $ keywords x
        H.p $ (foldRich' cv $ description x) >> H.br >> (http $ posUrl x)

projectsH :: Cv -> Html
projectsH cv = H.section .! leaf $ do
  H.h3 $ toHtml $ hProjects cv
  H.table $ mapM_ f $ projects cv
  where
    f x = H.tr $ H.td $ do
      H.ul .! horizontal $ mapM_ (H.li . toHtml) $ projKeywords x
      H.p $ (toHtml $ projDescription x) >> H.br >> (http $ projUrl x)

backgroundsH :: Cv -> Html
backgroundsH cv = H.section .! leaf $ do
  H.h3 $ toHtml $ hBackgrounds cv
  H.table $ mapM_ f $ backgrounds cv
  where
    f x = H.tr $ do
      H.th $ toHtml $ date x
      H.td $ toHtml $ designation x

publicationsH :: Cv -> Html
publicationsH cv = H.section .! leaf $ do
  H.h3 $ toHtml $ hPublications cv
  H.table $ mapM_ f $ publications cv
  where
    f x = H.tr $ do
      -- H.th $ label cv x
      H.td $ do
        sequence_
          $ intersperse ", "
          $ map nameH
          $ authors x
        ". "
        "“" >> toHtml (title x) >> "”. "
        H.em (toHtml $ journal x) >> ". "
        H.em (toHtml $ pubDate x) >> "." >> H.br
        http $ pubUrl x

languagesH :: Cv -> Html
languagesH cv = H.section .! leaf $ do
  H.h3 $ toHtml $ hLanguages cv
  H.table $ mapM_ f $ languages cv
  where
    f x = H.tr $ do
      if null (language x) then mempty else H.th $ toHtml $ language x
      H.td $ toHtml $ status x

hobbiesH :: Cv -> Html
hobbiesH cv = H.section .! leaf $ do
  H.h3 $ toHtml $ hHobbies cv
  H.table .! compact
    $ mconcat
    $ intersperse trspace
    $ mapM_ f <$> hobbies cv
  where
    f x = H.tr $ do
      H.th $ toHtml $ hobby x
      H.td $ toHtml $ hobbyDetails x

skillsH :: Cv -> Html
skillsH cv = H.section .! leaf $ do
  H.h3 $ toHtml $ hSkills cv
  H.table .! compact
    $ mconcat
    $ intersperse trspace
    $ mapM_ f <$> skills cv
  where
    f x = H.tr $ do
      H.th $ mapM_ (\x -> toHtml x >> H.br) $ skill x
      H.td $ toHtml $ details x

trspace = H.tr .! space $ H.th mempty >> H.td (H.div mempty)

referencesH :: Cv -> Html
referencesH cv = H.section .! leaf $ do
  H.h3 $ toHtml $ hReferences cv
  H.table $ mapM_ f $ references cv
  where
    f x = H.tr $ do
      H.th $ label cv x
      H.td $ do
        nameH  (name x) >> ". "
        toHtml (role x) >> "." >> H.br
        mailto $ mail x

nameH :: (String,String) -> Html
nameH (a,b) = do
  H.span .! "firstname" $ toHtml a
  " "
  H.span .! "lastname"  $ toHtml b

pageTitle :: Cv -> Html
pageTitle cv = H.title $ toHtml $ author cv ++ " - " ++ occupation cv

newtype Class = Class [String]

instance IsString Class where
  fromString x = Class [x]

mailto :: String -> Html
mailto [] = mempty
mailto x  = H.a ! A.href (toValue $ "mailto:" ++ x) $ toHtml x

http :: String -> Html
http [] = mempty
http x  = H.a ! A.href (toValue $ "https://" ++ x) $ toHtml x

horizontal = "horizontal" :: Class
columns    = "columns"    :: Class
leaf       = "leaf"       :: Class
shrink     = "shrink"     :: Class
compact    = "compact"    :: Class
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

ref :: Cv -> Ref -> Html
ref cv x = H.a .! ref_ ! A.href (toValue $ "#" ++ show id) $ toHtml id
  where id = indexOf cv x

label :: (Eq a, Typeable a) => Cv -> a -> Html
label cv x = H.span .! ref_ ! A.id (toValue id) $ toHtml id
  where id = indexOf cv $ Ref x

indexOf :: Cv -> Ref -> Int
indexOf cv x = (1+)
  $ maybe (error "indexOf: ref not found") id
  $ findIndex (x==)
  $ map Ref (publications cv)
  ++ map Ref (references cv)

foldRich' :: Cv -> Rich -> Html
foldRich' = foldRich toHtml . ref
