module Exercises_6_14_Chapter_Excercises where

import Data.List (sort)

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
-- 1)
data Person = Person Bool deriving Show

printPerson :: Person -> IO ()
printPerson person = putStrLn (show person)

-- 2)
data Mood = Blah | Woot deriving (Show, Eq)

settleDown x = if x == Woot
                 then Blah
                 else x

-- 3)
-- a) acceptable inputs: Blah, Woot
-- b) settleDown 9 would lead to an error, because there is no instance of Num Mood
-- c) Blah > Woot would lead to an error, because there is no instance of Ord Mood


-- 4) does typecheck!
type Subject = String
type Verb = String
type Object = String

data Sentence = Sentence Subject Verb Object deriving (Eq, Show)

s1 = Sentence "dogs" "drool"
s2 = Sentence "Julie" "loves" "dogs"


-- Given the datatype declaration what can we do?
data Rocks = Rocks String deriving (Eq, Show)
data Yeah = Yeah Bool deriving (Eq, Show)
data Papu = Papu Rocks Yeah deriving (Eq, Show)

-- 1)
-- does not typecheck: value constructor Papu needs values of type Rocks and Yeah not String and Bool!
-- phew = Papu "chases" True
phew = Papu (Rocks "chases") (Yeah True)

-- 2)
-- does typecheck
truth = Papu (Rocks "chomzkydoz") (Yeah True)

-- 3)
-- does typecheck
equalityForall :: Papu -> Papu -> Bool
equalityForall p p' = p == p'

-- 4)
-- does not typecheck because there is no instance of Ord Papu!
comparePapus :: Papu -> Papu -> Bool
-- comparePapus p p' = p > p'
comparePapus = undefined

-- Match the types
-- 1)
i1 :: Num a => a
-- cannot be changed to "i1 :: a" because of 1 has type Num a
i1 = 1

-- 2)
f2 :: Float
-- cannot be changed to "f2 :: Num a => a" because 1.0 has type Fractional a
f2 = 1.0

-- 3)
-- f3 :: Float
-- can be changed to "f3 :: Fractional a => a" because 1.0 has type Fractional a
f3 :: Fractional a => a
f3 = 1.0

-- 4)
-- f4 :: Float
-- can be changed to "f4 :: RealFrac a => a" because 1.0 has type Float which has a typeclass instance of RealFrac
f4 :: RealFrac a => a
f4 = 1.0

-- 5)
-- freud :: a -> a
-- can be changed to "freud :: Ord a => a -> a" because a can be specialized to be of the constrained polymorphic typeclass Ord
freud :: Ord a => a -> a
freud x = x

-- 6)
-- freud' :: a -> a
-- can be changed to "freud' :: Int -> Int" because a can be specialized to be of type Int
freud' :: Int -> Int
freud' x = x

-- 7)
myX7 = 1 :: Int

sigmund :: Int -> Int
-- cannot be changed to "sigmund :: a -> a" because sigmund is type inferenced to "Int -> Int" and cannot be more generalized
sigmund x = myX7

-- 8)
myX8 = 1 :: Int

sigmund' :: Int -> Int
-- cannot be changed to "sigmund' :: Num a => a -> a" because sigmund' is type inferenced to "Int -> Int" and cannot be more generalized
sigmund' x = myX8

-- 9)
-- jung :: Ord a => [a] -> a
-- can be changed to "jung :: [Int] -> Int" because a can be specialized to be of type Int
jung :: [Int] -> Int
jung xs = head (sort xs)

-- 10)
-- young :: [Char] -> Char
-- can be changed to "young :: Ord a => [a] -> a" because young is type inferenced to the more general "Ord a => [a] -> a"
young :: Ord a => [a] -> a
young xs = head (sort xs)

-- 11)
mySort :: [Char] -> [Char]
mySort = sort

signifier :: [Char] -> Char
-- can not be changed to "signifier :: Ord a => [a] -> a" because signifier is type inferenced to "[Char] -> Char" (because of mySort) and cannot be more generalized
signifier xs = head (mySort xs)


-- Type-Kwon-Do Two: Electric Typealoo
-- 1)
chk :: Eq b => (a -> b) -> a -> b -> Bool
chk f x y = (f x) == y

-- 2)
arith :: Num b => (a -> b) -> Integer -> a -> b
arith f n x = (f x) * fromInteger n

