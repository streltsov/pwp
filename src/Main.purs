module Main where

import Prelude

import Effect (Effect)
import Effect.Console (log)

import Data.String.Regex (Regex, split)
import Data.String.Regex.Flags (global)
import Data.String.Regex.Unsafe (unsafeRegex)

h2Regex :: String
h2Regex = "((?<!=)={2}\\w+={2}(?!=))"

pattern :: Regex
pattern = unsafeRegex h2Regex global

splitByHeading :: String -> Array String
splitByHeading = split pattern

main :: Effect Unit
main = do
  log "🍝"
