module P22
    ( run
    ) where

run :: IO ()
run = do { print $ range 4 9
         }

range :: Int -> Int -> [Int]
range m n
    | m == n = [n]
    | otherwise = m:(range (m + 1) n)
