module P20
    ( run
    ) where

run :: IO ()
run = do { print $ removeAt 2 "abcd"
         }

removeAt :: Int -> [a] -> (a, [a])
removeAt 1 (x:xs) = (x, xs)
removeAt n (x:xs) = (e, x:es)
                    where (e, es) = removeAt (n - 1) xs
