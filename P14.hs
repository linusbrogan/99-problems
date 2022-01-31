module P14
    ( run
    ) where

run :: IO ()
run = do { print $ dupli "abccd"
         ; print $ dupli [1, 2, 3]
         }

dupli :: [a] -> [a]
dupli [] = []
dupli (x:xs) = x:x:(dupli xs)
