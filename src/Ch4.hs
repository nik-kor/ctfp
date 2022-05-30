module Ch4
  ( Optional (..),
    safeRoot,
    safeReciprocal,
    (>=>),
  )
where

-- type Writer a = (a, String)
data Optional a = Some a | None deriving (Show)

return :: a -> Optional a
return = Some

optionalToString :: Optional Float -> String
optionalToString (Some a) = show a
optionalToString None = "None"

safeRoot :: Float -> Optional Float
safeRoot x
  | x >= 0 = Some (sqrt x)
  | otherwise = None

safeReciprocal :: Float -> Optional Float
safeReciprocal x
  | x /= 0 = Some (1 / x)
  | otherwise = None

m1 >=> m2 = \x ->
  let a = m1 x
   in case a of
        None -> None
        Some y -> m2 y
