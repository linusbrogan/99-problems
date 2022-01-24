module P1
    ( run
    ) where


run :: IO ()
run = do { putStrLn $ myLast ["a", "b", "c", "d"]
           ; putStrLn $ myLast["d", "c", "b", "yeet"]
           ; putStrLn $ [myLast "lorem ipsum"]
           ; putStrLn $ myLast []
           }

myLast :: [a] -> a
myLast (h:[]) = h
myLast (h:hs) = myLast hs
