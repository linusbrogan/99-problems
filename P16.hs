module P16
    ( run
    ) where

run :: IO ()
run = do { print $ dropEvery "abcdefghik" 3
         }

dropEvery :: [a] -> Int -> [a]
dropEvery xs n = dropEvery' xs n n

dropEvery' :: [a] -> Int -> Int -> [a]
dropEvery' [] _ _ = []
dropEvery' _ 0 _ = []
dropEvery' (x:xs) n t
    | t == 1 = dropEvery' xs n n
    | otherwise = x:(dropEvery' xs n (t - 1))
