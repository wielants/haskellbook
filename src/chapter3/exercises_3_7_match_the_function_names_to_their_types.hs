module Exercices_3_7_Match_the_function_names_to_their_types where

-- 1a) wrong 
--   show a => a -> String
--   ^

-- 1b) wrong
--   Show a -> a -> String
--          ^

-- 1c) correct
--   Show a => a -> String

-- 2a) wrong
--     a -> a -> Bool
--   ^ missing type class Eq

-- 2b) correct
--   Eq a => a -> a -> Bool

-- 2c) wrong
--   Eq a -> a -> a -> Bool
--        ^

-- 2d) wrong
--   Eq a => A -> Bool
--           ^^ must be lower case; one parameter is missing

-- 3) answer: a) (a, b) -> a

-- 4) answer: d) Num a => a -> a -> a 
