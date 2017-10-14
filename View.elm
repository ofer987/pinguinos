module View exposing (view)

import Html exposing (Html)

import View.Board exposing (view)
import Model exposing (..)


view : Model -> Html Msg
view model =
    View.Board.view model
