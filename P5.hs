module P5
    ( run
    ) where


run :: IO ()
run = do { print $ myReverse "A man, a plan, a canal, panama!"
         ; print $ myReverse [1,2,3,4]
         ; print $ myReverse ""
         }

myReverse :: [a] -> [a]
myReverse [] = []
myReverse (x:xs) = (myReverse xs) ++ [x]
