module P23
    ( run
    ) where

import System.Random

run :: IO ()
run = do { list <- rnd_select "abcdefgh" 3
         ; print list
         }

rnd_select :: [a] -> Int -> IO [a]
rnd_select [] _ = do return []
rnd_select _ 0 = do return []
rnd_select (x:xs) n = do g <- newStdGen
                         let (i, _) = randomR (1, length list) g
                         list <- (rnd_select xs (n - 1))
                         return (x:list)
