module Excercises_4_7 where

awesome = ["Papuchon", "Curry", ":)"]
alsoAwesome = ["Quake", "The Simons"]
allAwesome = [awesome, alsoAwesome]

-- 1)
-- length :: [a] -> Int

-- 2)
e2a = length [1,2,3,4,5] == 5
e2b = length [(1,2),(2,3),(3,4)] == 3
e2c = length awesome == 3
e2d = length (concat allAwesome) == 5

-- 3)
e3a = 6 / 3 -- works
-- e3b = 6 / length [1,2,3]-- returns an error 
-- No instance for (Fractional Int) arising from a use of ‘/’
-- In the expression: 6 / length [1, 2, 3]
-- In an equation for ‘e3b’: e3b = 6 / length [1, 2, 3]

-- 4)
e4 = 6 `div` length [1,2,3]

-- 5)
e5 :: Bool
e5 = (2 + 3 == 5) == True

-- 6)
x = 5
e6 :: Bool
e6 = (x + 3 == 5) == False

-- 7)
e7a = (length awesome == 2) == False
-- does not work: e7b = length [1, 'a', 3, 'b']
e7c = (length allAwesome + length awesome) == 5
e7d = ((8 == 8) && ('b' < 'a')) == False
-- does not work: e7e = (8 == 8) && 9

-- 8)
isPalindrome :: (Eq a) => [a] -> Bool
isPalindrome x = x == reverse x

-- 9)
myAbs :: Integer -> Integer
myAbs x = if (x < 0) then (-x)
          else x

-- 10)
f :: (a, b) -> (c, d) -> ((b, d), (a, c))
f x y = ((snd x, snd y), (fst x, fst y))

-- Correcting syntax

-- 1)
x' = (+)
--F xs = w `x` 1
f' xs = w `x'` 1
  where w = length xs

-- 2)
-- \ X = x
id' = \x -> x

-- 3)
-- \ x:xs -> x
head' = \(x:xs) -> x

-- 4)
-- f (a b) = A
fst' (a,b) = a
