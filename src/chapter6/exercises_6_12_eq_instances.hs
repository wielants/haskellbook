module Excercises_6_12_Eq_Instances where

-- write the Eq instance for the following datatypes

-- 1)
data TisAnInteger = TisAn Integer

instance Eq TisAnInteger where
  (==) (TisAn x) (TisAn y) = x == y


e1_eq = (TisAn 1) == (TisAn 1)
e1_ne = (TisAn 1) == (TisAn 2)


-- 2)
data TwoIntegers = Two Integer Integer

instance Eq TwoIntegers where
  (==) (Two x1 x2) (Two y1 y2) = (x1 == y1) && (x2 == y2)

e2_eq = (Two 1 2) == (Two 1 2)
e2_ne = (Two 1 0) == (Two 3 2)

-- 3)
data StringOrInt = TisAnInt Int | TisAString String

instance Eq StringOrInt where
  (==) (TisAnInt x) (TisAnInt y) = x == y
  (==) (TisAString xs) (TisAString ys) = xs == ys
  (==) _ _ = False

e3_eq = (TisAnInt 1) == (TisAnInt 1)
e3_ne = (TisAnInt 0) == (TisAString "hello")

-- 4)
data Pair a = Pair a a

instance Eq a => Eq (Pair a) where
  (==) (Pair x1 y1) (Pair x2 y2) = (x1 == x2) && (y1 ==y2)

e4_eq = (Pair 2 3) == (Pair 2 3)
e4_ne = (Pair 1 2) == (Pair 3 4)

-- 5)
data Tuple a b = Tuple a b

instance (Eq a, Eq b) => Eq (Tuple a b) where
  (==) (Tuple x1 y1) (Tuple x2 y2) = (x1 == x2) && (y1 == y2)

e5_eq = (Tuple 1 2) == (Tuple 1 2)
e5_ne = (Tuple 0 1) == (Tuple 1 0)

-- 6)
data Which a = ThisOne a | ThatOne a

instance Eq a => Eq (Which a) where
  (==) (ThisOne x) (ThisOne y) = x == y
  (==) (ThatOne x) (ThatOne y) = x == y
  (==) _ _ = False

e6_eq = (ThisOne 0) == (ThisOne 0)
e6_ne = (ThisOne 1) == (ThatOne 2)

-- 7)
data EitherOr a b = Hello a | Goodbye b

instance (Eq a, Eq b) => Eq (EitherOr a b) where
  (==) (Hello x) (Hello y) = x == y
  (==) (Goodbye x) (Goodbye y) = x == y
  (==) _ _ = False

e7_eq = (Hello "you" :: EitherOr String Int) == (Hello "you")
e7_ne = (Hello "you") == (Goodbye 42)
