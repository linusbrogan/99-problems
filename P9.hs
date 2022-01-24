module P9
    ( run
    ) where

run :: IO ()
run = do { print $ pack "aaaabccaadeeee"
         ; print $ pack [1,2,3,3,3,3,3]
         ; print $ pack ""
         }


countEqual :: Eq a => [a] -> Int
countEqual [] = 0
countEqual (x:[]) = 1
countEqual (x:y:ys)
    | x == y = 1 + (countEqual (y:ys))
    | otherwise = 1


pack :: Eq a => [a] -> [[a]]
pack [] = []
--pack (x:[]) = [[x]]
pack ys = (take n ys):(pack (drop n ys))
          where n = countEqual ys
