module P21
    ( run
    ) where

run :: IO ()
run = do { print $ insertAt 'X' "abcd" 2
         }

insertAt :: a -> [a] -> Int -> [a]
insertAt e xs 1 = e:xs
insertAt e (x:xs) n = x:(insertAt e xs (n - 1))
