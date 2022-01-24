module P10
    ( run
    ) where

import P1 (myLast)
import P4 (myLength)
import P9 (pack)

run :: IO ()
run = do { print $ encode "aaaabccaadeeee"
         ; print $ encode [1,2,3,3,3,3,3]
         ; print $ encode ""
         }

encode :: Eq a => [a] -> [(Int, a)]
encode xs = encode' $ pack xs

encode' :: Eq a => [[a]] -> [(Int, a)]
encode' [] = []
encode' (x:xs) = (myLength x, x0):(encode' xs)
                 where x0 = myLast x
