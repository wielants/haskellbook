module Excercises_5_6_Parametricity where

-- 1) only one possible implementation
f :: a -> a
f x = x

-- 2)
g1, g2 :: a -> a -> a
g1 x y = x
g2 x y = y

-- 3) behaviour is independent of types a and b
h :: a -> b -> b
h x y = y
--
