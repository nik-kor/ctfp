{-# OPTIONS_GHC -Wno-missing-methods #-}

module Main where

import Ch4
import Ch6
import Ch7
import Data.List (unfoldr)
import Data.Void
import System.Random (RandomGen, mkStdGen, uniformR)

rand :: [Word]
rand =
  let rolls :: RandomGen g => Int -> g -> [Word]
      rolls n = take n . unfoldr (Just . uniformR (1, 6))
      pureGen = mkStdGen 1
   in rolls 10 pureGen :: [Word]

absurd :: Void -> a
absurd = undefined

main :: IO ()
main = do
  putStrLn "-------Chapter 2"
  print rand

  putStrLn "-------Chapter 4"
  (print . (safeRoot >=> safeReciprocal)) (-1)
  (print . (safeRoot >=> safeReciprocal)) 9
