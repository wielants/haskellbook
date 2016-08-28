module Excercises_4_2 where

data Mood = Blah | Woot deriving Show

-- 1) type constructor is Mood
-- 2) values of type Mood are Blah and Woot

-- 3) changeMood :: Mood -> Woot
-- Woot is a value constructor not a type constructor

-- 4)
changeMood Blah = Woot
changeMood _ = Blah
