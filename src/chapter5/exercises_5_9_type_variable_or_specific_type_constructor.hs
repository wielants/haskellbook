module Exercises_5_9_Type_Variable_or_Specific_Type_Constructor where

-- fp = fully polymorphic
-- cp = constrained polymorphic
-- ct = concrete type

-- 1)
f1 :: Num a => a -> b -> Int -> Int
--             cp   fp   ct     ct
f1 = undefined

-- 2)
data Zed
data Blah
f2 :: zed -> Zed -> Blah
--    fp     ct     ct
f2 = undefined

-- 3)
data C
f3 :: Enum b => a -> b -> C
--              fp   cp   ct
f3 = undefined

-- 4)
f4 :: f -> g -> C
--    fp   fp   ct
f4 = undefined
