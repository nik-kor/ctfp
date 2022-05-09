module Lib
  ( someFunc,
    pal,
  )
where

someFunc :: IO ()
someFunc = putStrLn "someFun123c"

pal :: String -> Bool
pal xs
  | xs == reverse xs = True
  | otherwise = False