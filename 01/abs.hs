module SICP where

abs :: Int -> Int
abs x | x > 0     = x
      | x == 0    = 0
      | x < 0     = -x
      | otherwise = 0
