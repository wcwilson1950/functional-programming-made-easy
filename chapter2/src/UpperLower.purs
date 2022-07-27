module UpperLower where

import Prelude

import Data.String.Common (toLower, toUpper)

isEven :: Int -> Boolean
isEven n = n `mod` 2 == 0

upperLower :: Int -> (String -> String)
upperLower n = if isEven n then toUpper else toLower

