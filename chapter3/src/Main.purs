module Main where

import Prelude

import Effect (Effect)
import Effect.Console (log, logShow)

-- Boolean
t :: Boolean
t = true
f :: Boolean
f = false

-- Character
cha :: Char
cha = 'a'

unicodeCh :: Char
unicodeCh = '\x0039'

-- String
s :: String
s = "This is a multi-line string\nwith embedded newlines."

s2 :: String
s2 = "This is a multiline string with continuations\
    \ at the end of the lines."

s3 :: String
s3 = """
This is a multi-line that can contain quotes "", but \n is not a newline.
"""

unicodeStr :: String
unicodeStr = "This is a unicode character: \x00E9"

-- Number
n :: Number
n = 1.0
smallestNumber :: Number
smallestNumber = (-5e-324)

largestNumber :: Number
largestNumber = 1.7976931348623157e+308

-- Purescript specific Types
-- Don't map directly to Javascript Types
i :: Int
i = 49

i2 :: Int
i2 = 1 + 4
smallestInt :: Int
smallestInt = (-2147483648)

largestInt :: Int
largestInt = 2147483647

main :: Effect Unit
main = do
    logShow t
    logShow f
    logShow cha
    logShow unicodeCh
    log s
    log s2
    log s3
    log unicodeStr
    logShow smallestNumber
    logShow largestNumber
    logShow i
    logShow i2
    logShow smallestInt
    logShow largestInt
