module Excersises_3_7_ReadingSyntax where

------
--- #1
------

-- a) works
e1a = concat [[1,2,3],[4,5,6]]

-- b) does not work
-- ++ [1,2,3] [4,5,6]
e1b = (++) [1,2,3] [4,5,6]

-- c) works
e1c = (++) "hello" " world"

-- d) does not work
-- ["hello" ++ " world]
e1d = ["hello" ++ " world"]

-- e) does not work
-- 4 !! "hello"
e1e = "hello" !! 4

-- f) works
e1f = (!!) "hello" 4

-- g) does not work
-- take "4 loverly"
e1g = take 4 "loverly"

-- h) works
e1h = take 3 "awesome"


------
--- #2
------

-- a) -> d)
e2a = concat [[1*6],[2*6],[3*6]]
e2_d = [6,12,18]

-- b) -> c)
e2b = "rain" ++ drop 2 "elbow"
e2_c = "rainbow"

-- c) -> e)
e2c = 10 * head [1,2,3]
e2_e = 10

-- d) -> a)
e2d = (take 3 "Julie") ++ (tail "yes")
e2_a = "Jules"

-- e) -> b)
e2e = concat [tail [1,2,3], tail [4,5,6], tail [7,8,9]]
e2_b = [2,3,5,6,8,9]
