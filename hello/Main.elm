module Main exposing (..)

-- for install use command: elm package install elm-lang/html
import Html exposing (text)

politely : String -> String
politely phrase =
  "Excuse me, " ++ phrase

ask : String -> String -> String
ask thing place =
  "is there a "
  ++ thing
  ++ " in the "
  ++ place
  ++ "?"


askPolitelyAboutFish : String -> String
askPolitelyAboutFish = politely << (ask "fish")

main =
  text <| askPolitelyAboutFish "river"
