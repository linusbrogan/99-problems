module P19
    ( run
    ) where

run :: IO ()
run = do { print $ rotate "abcdefgh" 3
         ; print $ rotate "abcdefgh" (-2)
         }

rotate :: [a] -> Int -> [a]
rotate xs 0 = xs
rotate [] _ = []
rotate list@(x:xs) n
    | n < 0 = rotate list (n + length list)
    | otherwise = rotate (xs ++ [x]) (n - 1)
