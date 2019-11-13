import System.Environment

main = do
  [from,to] <- map read <$> getArgs
  putStrLn []
  putStr $ unlines $ reverse $ map (mediaQuery to) [from..to]
  putStrLn []

mediaQuery :: Int -> Int -> String
mediaQuery orig target = concat
  [ "@media "
  , "(max-width: " ++ show target ++ "mm) { "
  , "body { "
  , "transform-origin: top left; "
  , "transform: scale(" ++ show ratio ++ "); "
  , "height: " ++ show ratio ++ "vh; }}" ]
  where
    ratio = fromIntegral (target-3) / fromIntegral orig
