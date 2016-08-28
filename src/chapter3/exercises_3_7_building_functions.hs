module Excersises_3_7_BuildingFunctions where

------
--- #1
------

-- a)
x = "Curry is awsome"
ex1a = x ++ "!"

-- b)
y = "Curry is awsome!"
ex1b = y !! 4

-- c)
z = "Curry is awsome!"
ex1c = drop 9 z

------
--- #2
------

-- a)
ex2a x = x ++ "!"

-- b)
ex2b y = y !! 4

-- c)
ex2c z = drop 9 z


------
--- #3
------

thirdLetter :: String -> Char
thirdLetter x = x !! 2

------
--- #4
------

letterIndex :: Int -> Char
letterIndex n = "Curry is awesome" !! n

------
--- #5
------

c = "Curry is awesome"
rvsv = take 7 (drop 9 c) ++ take 4 (drop 5 c) ++ take 5 c
