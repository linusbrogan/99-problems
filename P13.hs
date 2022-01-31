module P13
    ( run
    ) where

import P11 (Duplicate(..))

run :: IO ()
run = do { print $ encode "aaaabccaadeeee"
         ; print $ encode [1,2,3,3,3,3,3]
         ; print $ encode ""
         }

encode :: Eq a => [a] -> [Duplicate a]
encode = encodeD

countEqual :: Eq a => [a] -> Int
countEqual [] = 0
countEqual (x:[]) = 1
countEqual (x:y:ys)
    | x == y = 1 + (countEqual (y:ys))
    | otherwise = 1

encodeD :: Eq a => [a] -> [Duplicate a]
encodeD [] = []
encodeD xs@(x:_) = (wrap n x):(encodeD (drop n xs))
                   where n = countEqual xs

wrap :: Int -> a -> Duplicate a
wrap 1 x = Single x
wrap n x = Multiple n x
