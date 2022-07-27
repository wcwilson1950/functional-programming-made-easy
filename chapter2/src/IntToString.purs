module IntToString where

import Prelude

toString :: Int -> String
toString n = show n

toArray :: String -> Array String
toArray s = [s]

intToStringArray :: Int -> Array String
intToStringArray n = toArray (toString n)

intToStringArray' :: Int -> Array String
intToStringArray' = toArray <<< toString
