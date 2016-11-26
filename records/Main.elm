module Main exposing (..)

-- for install use command: elm package install elm-lang/html
import Html exposing (text)

type alias Dog =
  {
    name: String,
    age: Int
  }

dog =
      {
        name = "Spock",
        age = 3
      }

renderDog : Dog -> String
renderDog dog =
  dog.name ++ ", " ++ (toString dog.age)

main =
  text <| renderDog dog
