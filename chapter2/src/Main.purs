module Main where

import Prelude

import Effect (Effect)
import Effect.Console (log, logShow)
import AppendIf (appendIf, isSmall, isOddLength)
import UpperLower (upperLower)
import IntToString (intToStringArray, intToStringArray', toString)

main :: Effect Unit
main = do
  log $ upperLower 0 "this should be in uppercase"
  log $ upperLower 1 "THIS SHOULD BE OUTPUT IN LOWERCASE"
  log $ appendIf isSmall "Hello, Bill" "!!!"
  log $ appendIf isOddLength "Hello, Bill" "!!!"
  logShow $ intToStringArray 4
  logShow $ intToStringArray' 5






