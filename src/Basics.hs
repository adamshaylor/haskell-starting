module Basics
    ( putQStrLn
    ) where

putQStrLn :: IO ()
putQStrLn = do
    str <- getLine
    putChar '"'
    putStr str
    putChar '"'
    putChar '\n'
