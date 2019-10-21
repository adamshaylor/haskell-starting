module Basics
    (
        putQStrLn,
        loop,
        fact
    ) where

putQStrLn :: IO ()
putQStrLn = do
    str <- getLine
    putChar '"'
    putStr str
    putChar '"'
    putChar '\n'

loop :: Int -> IO ()
loop n = do
    putStrLn $ show (n * n)
    if n < 10
    then do
        loop (n + 1)
    else
        return ()

fact :: Int -> Int
fact n =
    if n == 0
    then 1
    else n * fact (n - 1)
