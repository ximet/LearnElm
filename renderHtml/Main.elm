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
      cost = 149000
    },
    {
      name = "Falcon",
      cost = 189999
    },
    {
      name = "Death Star",
      cost = 100000000000
    }
  ]

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
  renderShips ships
