module P3
    ( run
    ) where


run :: IO ()
run = do { putStrLn $ elementAt ["a", "b", "c", "d"] 2
           ; putStrLn $ elementAt ["d", "c", "b", "yeet"] 4
           ; putStrLn $ [elementAt "lorem ipsum" 7]
           ; putStrLn $ elementAt ["a"] 2
           ; putStrLn $ elementAt ["a"] (-1)
           }

elementAt :: [a] -> Int -> a
elementAt (a:as) 1 = a
elementAt (a:as) n = elementAt as $ n - 1
