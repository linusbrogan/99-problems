module P17
    ( run
    ) where

run :: IO ()
run = do { print $ split "abcdefghik" 3
         }

split :: [a] -> Int -> [[a]]
split [] _ = [[], []]
split xs 0 = [[], xs]
split (x:xs) n = [x:head, tail]
                 where (head:tail:_) = split xs (n - 1)
