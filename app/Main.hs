module Main where

import Lib (someFunc)

main :: IO ()
main = do
  putStrLn "hi there"
  someFunc
