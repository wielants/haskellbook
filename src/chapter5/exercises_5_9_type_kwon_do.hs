module Exercises_5_9_Type_Kwon_Do where

-- example
data Woot
data Blah

f' :: Woot -> Blah
f' = undefined

g' :: (Blah, Woot) -> (Blah, Blah)
g' = ???


-- 1)
f :: Int -> String
f = undefined

g :: String -> Char
g = undefined

h :: Int -> Char
h = ???

-- 2)
data A
data B
data C

q :: A -> B
q = undefined

w :: B -> C
w = undefined

e :: A -> C
e = ???

-- 3)
data X
data Y
data Z

xz :: X -> Z
xz = undefined

yz :: Y -> Z
yz = undefined

xform :: (X, Y) -> (Z, Z)
xform = ???

-- 4)
munge :: (x -> y) -> (y -> (w, z)) -> x -> w
munge = ???

