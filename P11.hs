module P11
    ( run
    , Duplicate(..)
    ) where

import P1 (myLast)
import P4 (myLength)
import P9 (pack)

run :: IO ()
run = do { print $ encode "aaaabccaadeeee"
         ; print $ encode [1,2,3,3,3,3,3]
         ; print $ encode ""
         }

data Duplicate a = Single a | Multiple Int a
     deriving (Show)

encode :: Eq a => [a] -> [Duplicate a]
encode xs = map (toDuplicate) $ encode' $ pack xs

toDuplicate :: (Int, a) -> Duplicate a
toDuplicate (n, x)
    | n == 1 = Single x
    | otherwise = Multiple n x

encode' :: Eq a => [[a]] -> [(Int, a)]
encode' [] = []
encode' (x:xs) = (myLength x, x0):(encode' xs)
                 where x0 = myLast x
