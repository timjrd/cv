{-# LANGUAGE ExistentialQuantification #-}

module Rich (Rich, Ref(Ref), (?), toRich, foldRich, fromRich) where

import Data.String
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

instance IsString Rich where
  fromString = Rich . singleton . Str

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

foldRich :: Monoid m => (String -> m) -> (Int -> m) -> [Ref] -> Rich -> m
foldRich f1 f2 ys (Rich xs) = foldMap f xs
  where f (Str x) = f1 x
        f (Rfe x) = maybe (error "foldRich: index not found") f2
                    $ findIndex (x==) ys

fromRich :: Typeable a => Rich -> [a]
fromRich (Rich xs) = foldMap f xs
  where f (Rfe (Ref x)) = maybeToList $ cast x
        f _             = []


