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


