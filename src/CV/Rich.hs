{-# LANGUAGE ExistentialQuantification #-}

module CV.Rich (Rich, Ref(Ref), (?), toRich, foldRich, fromRich) where

import Data.Sequence
import Data.Monoid
import Data.Foldable
import Data.Maybe
import Data.List
import Data.Typeable
import Control.Applicative

import Text.Blaze.XHtml5

data Rich = Rich (Seq Item)
  deriving (Eq, Typeable)

data Item = Str String
          | Rfe Ref
  deriving Eq

data Ref = forall a . (Eq a, Typeable a) => Ref a

instance Eq Ref where
  (Ref a) == (Ref b) = cast a == Just b

instance Monoid Rich where
  mappend (Rich (xs :|> (Str x))) (Rich ((Str y) :<| ys)) =
    Rich $ (xs :|> Str (x ++ y)) <> ys

  mappend (Rich xs) (Rich ys) = Rich $ xs <> ys

  mempty = Rich mempty

(?) :: (Eq a, Eq b, Typeable a, Typeable b) => a -> b -> Rich
a ? b = toRich a <> toRich b

toRich :: (Eq a, Typeable a) => a -> Rich
toRich x = case (cast x <|> (fromString <$> cast x)) of
  Just y  -> y
  Nothing -> Rich $ singleton $ Rfe $ Ref x
  where
    fromString = Rich . singleton . Str

foldRich :: Monoid m => (String -> m) -> (Ref -> m) -> Rich -> m
foldRich f1 f2 (Rich xs) = foldMap f xs
  where f (Str x) = f1 x
        f (Rfe x) = f2 x

fromRich :: Typeable a => Rich -> [a]
fromRich (Rich xs) = foldMap f xs
  where f (Rfe (Ref x)) = maybeToList $ cast x
        f _             = []


