module P8
    ( run
    ) where

run :: IO ()
run = do { print $ compress "aaaabccaadeeee"
         ; print $ compress [1,2,3,3,3,3,3]
         ; print $ compress ""
         }

compress :: Eq a => [a] -> [a]
compress [] = []
compress (x:[]) = [x]
compress (x:y:ys)
    | x == y = compress (y:ys)
    | otherwise = x:(compress (y:ys))
