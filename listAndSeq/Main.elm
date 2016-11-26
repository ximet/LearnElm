module Main exposing (..)

-- for install use command: elm package install elm-lang/html
import Html exposing (text)
import List

type alias Person = {
  name: String,
  age: Int
}

people = [
      {
        name = "Legolas",
        age = 2931
      },
      {
        name = "Hobbit",
        age = 2956
      }
    ]

names: List Person -> List String
names peeps = List.map (\peep -> peep.name) peeps

findPerson : String -> List Person -> Maybe Person
findPerson name peeps =
  List.foldl
    (\peep memo ->
      case memo of
        Just _ ->
          memo

        Nothing ->
          if peep.name == name then
            Just peep
          else
             Nothing
    )
    Nothing
    peeps

main =
  text <| toString <| findPerson "Legolas" people
