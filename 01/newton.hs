module Newton where

square :: Num a => a -> a
square a = a * a

squareIterator :: Double -> Double -> Double
squareIterator guess x | goodEnough guess x = guess
                       | otherwise          = squareIterator (improve guess x) x

goodEnough :: Double -> Double -> Bool
goodEnough guess x = difference < threshold
  where
    threshold  = 0.00000001 :: Double
    difference = abs (square guess - x)

improve :: Double -> Double -> Double
improve guess x = average guess (x / guess)

average :: Double -> Double -> Double
average x y = (x + y) / 2
