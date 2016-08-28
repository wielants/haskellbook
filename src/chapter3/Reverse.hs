module Reverse where

c = "Curry is awesome"
rvsv ::String -> String
rvsv x = take 7 (drop 9 c) ++ take 4 (drop 5 c) ++ take 5 c

main :: IO ()
main = print $ rvsv "Curry is awesome"
