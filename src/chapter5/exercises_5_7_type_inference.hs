module Excercises_5_7_Type_Inference where

import Prelude hiding ((++),(*),take,(>),(<))

-- 1)
(++) :: [a] -> [a] -> [a]
(++) = undefined
-- myConcat :: [Char] -> [Char]
myConcat x = x ++ "yo"

-- 2)
(*) :: Num a => a -> a -> a
(*) = undefined
-- myMult :: Fractional a => a -> a
myMult x = (x / 3) * 5

-- 3)
take :: Int -> [a] -> [a]
take = undefined
-- myTake :: [Int] -> [Char]
myTake x = take x "hey you"

-- 4)
(>) :: Ord a => a -> a -> Bool
(>) = undefined
-- myCom :: Int -> Bool
myCom x = x > (length [1..10])

-- 5)
(<) :: Ord a => a -> a -> Bool
(<) = undefined
-- myAlph :: Char -> Bool
myAlph x = x < 'z'
