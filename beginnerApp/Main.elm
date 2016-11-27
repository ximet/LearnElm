module Main exposing (..)

-- for install use command: elm package install elm-lang/html
import Html exposing (..)
import Html exposing (beginnerProgram)
import Html.Events exposing (..)

-- state (store)
model =
  {
    showFace = False
  }

-- action
type Msg =
  ShowFace

-- reducer
update msg model  =
  case msg of
    ShowFace -> { model | showFace = True }

-- view
view model =
  div []
      [
        h1 [] [text "Face generator"],
        button [onClick ShowFace] [text "Click me!"],
        if model.showFace then
          text "Yohooo!"
        else
          text ""
      ]



main =
  beginnerProgram
  {
    model = model,
    update = update,
    view = view
  }
