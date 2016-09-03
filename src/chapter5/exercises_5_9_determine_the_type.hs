module Exercises_5_9_Determine_the_Type where

-- 1a) (* 9) 6
e1a = (* 9) 6
e1a_a = e1a == 54 -- 54 :: Num a => a

-- 1b) head [(0, "doge"), (1, "kitteh")]
e1b = head [(0, "doge"), (1, "kitteh")]
e1b_a = e1b == (0, "doge") -- (0, "doge") :: Num a => (a, [Char])

-- 1c) head [(0 :: Integer, "doge"), (1, "kitteh")]
e1c = head [(0 :: Integer, "doge"), (1, "kitteh")]
e1c_a = e1c == (0 :: Integer, "doge") -- (0 :: Integer, "doge") :: (Integer, [Char])

-- 1d) if False then True else False
e1d = if False then True else False
e1d_a = e1d == False -- False :: Bool

-- 1e) length [1,2,3,4,5]
e1e = length [1,2,3,4,5]
e1e_a = e1e == 5 -- 5 :: Int

-- 1f) (length [1,2,3,4]) > (length "TACOCAT")
e1f = (length [1,2,3,4]) > (length "TACOCAT")
e1f_a = e1f == False -- False :: Bool

-- 2)
e2 = let x = 5
         y = x + 5
         w = y * 10
     in w
-- w :: Num a => a

-- 3)
e3 = let x = 5
         y = x + 5
         z y = y * 10
     in z y
-- z y :: Num a => a

-- 4)
e4 = let x = 5
         y = x + 5
         f = 4 / y
     in f
-- f :: Fractional a => a

-- 5)
e5 = let x = "Julie"
         y = " <3 "
         z = "Haskell"
         f = x ++ y ++ z
     in f
-- f :: [Char]

