module Exercises_5_9_Given_a_Type_Write_a_Function where

-- 1)
i :: a -> a
i x = x

-- 2)
c :: a -> b -> a
c x y = x

-- 3)
c'' :: b -> a -> b
c'' x y = x
-- c and c'' are the same function (alpha equivalence)

-- 4)
c' :: a -> b -> b
c' x y = y

-- 5)
r,r',r'' :: [a] -> [a]
r xs = xs
r' xs = xs ++ xs
r'' xs = tail xs
-- ...

-- 6)
co :: (b -> c) -> (a -> b) -> (a -> c)
co f g x = f (g x)

-- 7)
a :: (a -> c) -> a -> a
a f x = x

-- 8)
a' :: (a -> b) -> a -> b
a' f x = f x
