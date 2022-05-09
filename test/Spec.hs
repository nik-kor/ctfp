import Lib (pal)
import Test.QuickCheck (quickCheck)

main :: IO ()
main = do
  quickCheck prop_reverseInvariant

prop_reverseInvariant :: String -> Bool
prop_reverseInvariant text = pal text == pal (reverse text)