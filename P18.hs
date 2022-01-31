module P18
    ( run
    ) where

run :: IO ()
run = do { print $ slice "abcdefghik" 3 7
         }

slice :: [a] -> Int -> Int -> [a]
slice [] _ _ = []
slice _ 1 0 = []
slice (x:xs) 1 j = x:(slice xs 1 (j - 1))
slice (x:xs) i j = slice xs (i - 1) (j - 1)
