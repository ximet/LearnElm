module Main exposing (..)

-- for install use command: elm package install elm-lang/html
import Html exposing (..)
import Html.Attributes exposing (..)
import List

type alias StarShip =
  {
    name: String,
    model: String,
    cost: Int
  }

ships =
  [
    {
      name = "X-Wing",
      cost = 149000,
      model = "light"
    },
    {
      name = "Falcon",
      cost = 189999,
      model = "medium"
    },
    {
      name = "Death Star",
      cost = 100000000000,
      model = "hard"
    }
  ]

renderShip : StarShip -> Html msg
renderShip ship =
  li []
     [
        text ship.name,
        text ", ",
        b []
          [
            text <| toString ship.cost
          ]
     ]

numbers = [1, 2, 3, 4, 5]

printThing : thing -> Html msg
printThing thing =
  ul [] [ text <| toString thing ]

renderShips : List StarShip -> Html msg
renderShips ships =
  div [
        style [
                ( "font-family", "Arial" ),
                ( "padding", "1em" )
              ]
      ]
      [
        h1 [] [text "Ships"],
        ul [] (List.map renderShip ships)
      ]

main =
  ul [] (List.map printThing ships)
