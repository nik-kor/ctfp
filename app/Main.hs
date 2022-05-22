module Main where

import Data.List (unfoldr)
import Lib (someFunc)
import System.Random (RandomGen, mkStdGen, uniformR)
import Data.Void

-- TODO - check if the same seed gives same "random" numbers - Challenge 2.3
-- TODO what is => `a :: Num p => p`
rand :: [Word]
rand =
  let rolls :: RandomGen g => Int -> g -> [Word]
      rolls n = take n . unfoldr (Just . uniformR (1, 6))
      pureGen = mkStdGen 137
   in rolls 10 pureGen :: [Word]

absurd :: Void -> a
absurd = undefined 

main :: IO ()
main = do
  putStrLn "hi there"
  putStrLn "brra"
  putStrLn "bbbbba"
  print rand