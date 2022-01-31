module P23
    ( run
    ) where

run :: IO ()
run = do { print $ rnd_select "abcdefgh" 3
         }

rnd_select :: [a] -> Int -> [a]
rnd_select [] _ = []
rnd_select _ 0 = []
rnd_select (x:xs) n = x:(rnd_select xs (n - 1))
