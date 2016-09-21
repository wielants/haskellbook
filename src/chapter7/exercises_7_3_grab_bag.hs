module Exercises_7_3_Grab_Bag where

import Test.QuickCheck

-- 1) Which (two or more) of the following are equivalent?
-- a)
mTh_a x y z = x * y * z
-- b)
mTh_b x y = \z -> x * y * z
-- c)
mTh_c x = \y -> \z -> x * y * z
-- d)
mTh_d = \x -> \y -> \z -> x * y * z

-- all are equal
check = do
  quickCheck ((\x y z -> mTh_a x y z == mTh_b x y z) :: Integer -> Integer -> Integer -> Bool)
  quickCheck ((\x y z -> mTh_a x y z == mTh_c x y z) :: Integer -> Integer -> Integer -> Bool)
  quickCheck ((\x y z -> mTh_a x y z == mTh_d x y z) :: Integer -> Integer -> Integer -> Bool)


-- 2) The type of mTh is Num a => a -> a -> a -> a.Which is the type of "mTh 3"?
mTh_2 :: Num a => a -> a -> a -- answer d)
mTh_2 = mTh_a 3

-- 3) writing anonymous lambda syntax
-- a)
addOneIfOdd n = case odd n of
  True -> f n
  False -> n
  -- where f n = n + 1
  where f = \n -> n + 1

-- b)
-- addFive x y = (if x > y then y else x) + 5
addFive = \x -> \y -> (if x > y then y else x) + 5

-- c)
-- mflip f = \x -> \y -> f y x
mflip f x y = f y x
