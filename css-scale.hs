import System.Environment

main = do
  [from,to] <- map read <$> getArgs
  putStrLn []
  putStr $ unlines $ map (mediaQuery to) [from..to]
  putStrLn []

mediaQuery :: Int -> Int -> String
mediaQuery orig target = concat
  [ "@media "
  , "(min-width: " ++ show lo ++ "mm) and "
  , "(max-width: " ++ show hi ++ "mm) { "
  , "body { "
  , "transform-origin: top left; "
  , "transform: scale(" ++ show ratio ++ "); }}" ]
  where
    lo = target - 1
    hi = target
    ratio = fromIntegral (lo-2) / fromIntegral orig
