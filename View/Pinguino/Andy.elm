module View.Pinguino.Andy exposing (view)

import Html exposing (Html, div, text, button)
import Html.Events exposing (onClick)
import Model exposing (..)
import Model.Type exposing (..)
import View.Pinguino exposing (..)


view : Piece -> Html Msg
view piece =
    View.Pinguino.view rotateClockwise rotateCounterclockwise piece


rotateClockwise : Html Msg
rotateClockwise =
    button
        [ onClick (RotateAndy Clockwise) ]
        [ text "Clockwise" ]


rotateCounterclockwise : Html Msg
rotateCounterclockwise =
    button
        [ onClick (RotateAndy Counterclockwise) ]
        [ text "Counterclockwise" ]
