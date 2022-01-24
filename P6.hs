module P6
    ( run
    ) where

import P5 (myReverse)

run :: IO ()
run = do { print $ isPalindrome [1,2,3]
         ; print $ isPalindrome "madamimadam"
         ; print $ isPalindrome [1,2,4,8,16,8,4,2,1]
         ; print $ isPalindrome ""
         }

isPalindrome :: Eq a => [a] -> Bool
isPalindrome xs = xs == (myReverse xs)
