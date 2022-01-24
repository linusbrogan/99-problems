module P4
    ( run
    , myLength
    ) where


run :: IO ()
run = do { print $ myLength []
         ; print $ myLength "lorem ipsum"
           }

myLength :: [a] -> Int
myLength [] = 0
myLength (x:xs) = 1 + myLength xs
