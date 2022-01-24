module P2
    ( run
    ) where


run :: IO ()
run = do { putStrLn $ myButLast ["a", "b", "c", "d"]
           ; putStrLn $ myButLast ["d", "c", "b", "yeet"]
           ; putStrLn $ [myButLast "lorem ipsum"]
           ; putStrLn $ myButLast ["a"]
           }

myButLast :: [a] -> a
myButLast (a:b:[]) = a
myButLast (a:as) = myButLast as
