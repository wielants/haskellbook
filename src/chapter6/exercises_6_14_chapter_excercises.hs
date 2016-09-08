module Exercises_6_14_Chapter_Excercises where

-- Multiple Choice

-- 1) The Eq class
-- c) makes equality tests possible

-- 2) The typeclass Ord
-- b) is a subclass of Eq

-- 3) Suppose the typeclass Ord has an operator >. What is the type of >?
-- a) Ord a => a -> a -> Bool

-- 4) In x = divMod 16 12
-- c) the type of x is a tuple

-- 5) The typeclass Integral includes
-- a) Int and Integer numbers

-- Does it typecheck?

data Person = Person Bool

printPerson :: Person -> IO ()
printPerson person = putStrLn (show person)
