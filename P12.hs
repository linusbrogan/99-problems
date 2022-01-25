module P12
    ( run
    ) where

import P11 (Duplicate(..))

run :: IO ()
run = do { print $ decodeModified [Multiple 4 'a',Single 'b',Multiple 2 'c',Multiple 2 'a',Single 'd',Multiple 4 'e']
         }

decodeModified :: [Duplicate a] -> [a]
decodeModified [] = []
decodeModified (x:xs) =  (decodeDuplicate x) ++ (decodeModified xs)

decodeDuplicate :: Duplicate a -> [a]
decodeDuplicate (Single x) = [x]
decodeDuplicate (Multiple n x) = take n $ repeat x
