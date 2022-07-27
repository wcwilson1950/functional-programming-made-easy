module AppendIf where

import Prelude
-- spago install purescript-strings
import Data.String.CodePoints (length)

isSmall :: String -> Boolean
isSmall s = length s < 10

isOddLength :: String -> Boolean
isOddLength s = length s `mod` 2 /= 0

appendIf :: (String -> Boolean) -> String -> String -> String
appendIf pred s append = if pred s then s <> append else s
