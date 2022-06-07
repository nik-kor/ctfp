module Ch6 where

-- Maybe isomorphic to Either

alpha :: Maybe a -> Either () a
alpha (Just a) = Right a
alpha Nothing = Left ()

beta :: Either () a -> Maybe a
beta (Right a) = Just a
beta _ = Nothing

gamma :: Maybe a -> Either a b
gamma (Just a) = Left a
gamma Nothing = undefined

--- ex 2
data Shape = Circle Float | Rect Float Float | Square Float

area :: Shape -> Float
area (Circle r) = pi * r * r
area (Rect d h) = d * h
area (Square x) = x * x

circ :: Shape -> Float
circ (Circle r) = 2.0 * pi * r
circ (Rect d h) = 2.0 * (d + h)
circ (Square x) = 4.0 * x


-- ex 5
rho :: Either a a -> (Bool, a)
rho (Left a) = (False, a)
rho (Right a) = (True, a)

rho' :: (Bool, a) -> Either a a 
rho' (True, a) = Right a
rho' (False, a) = Left a

