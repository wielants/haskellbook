module Excercises_5_5_Type_Arguments where

-- 1) f :: a -> a -> a -> a
-- answer a)
--   f (x ::Char) :: Char -> Char -> Char

-- 2) g :: a -> b -> c -> b
-- answer d)
--   g 0 'c' "woot" :: Char

-- 3) h :: (Num a, Num b) => a -> b -> b
-- answer d)
--   h 1.0 2 :: Num b => b

-- 4) h :: (Num a, Num b) => a -> b -> b
-- answer c)
--   h 1 (5.5 :: Double) :: Double

-- 5) jackal :: (Ord a, Eq b) => a -> b -> a
-- answer a)
--   jackal "keyboard" "has the word jackal in it" :: [Char]

-- 6) jackal :: (Ord a, Eq b) => a -> b -> a
-- answer e)
--   jackal "keyboard" :: Eq b => b -> [Char]

-- 7) kessel :: (Ord a, Num b) => a -> b -> a
-- answer d)
--   kessel 1 2 :: (Num a, Ord a) => a

-- 8) kessel :: (Ord a, Num b) => a -> b -> a
-- answer a)
--   kessel 1 (2 :: Integer) :: (Num a, Ord a) => a

-- 9) kessel :: (Ord a, Num b) => a -> b -> a
-- answer c)
--    kessel (1 :: Integer) 2 :: Integer
