module P15
    ( run
    ) where

run :: IO ()
run = do { print $ repli "abc" 3
         }

repli :: [a] -> Int -> [a]
repli [] _ = []
repli (x:xs) n = (take n $ repeat x) ++ (repli xs n)
