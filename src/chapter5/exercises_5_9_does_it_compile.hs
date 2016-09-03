module Exercises_5_9_Does_it_Compile where

-- 1)
e1 = let bigNum = (^) 5 $ 10
--         wahoo = bigNum $ 10
         wahoo = bigNum * 10
     in wahoo

-- 2)
e2 = let x = print 
         y = print "woohoo!"
         z = x "hello world"
     in z

-- 3)
e3 = let a = (+)
--         b = 5
         b = (+)
         c = b 10
         d = c 200
     in d

-- 4)
e4 = let a = 12 + b
         b = 10000 * c
         c = 1 -- added
     in b
