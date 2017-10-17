module View.Pinguino.Brad exposing (view)

import Html exposing (Html, div, text, button)
import Html.Events exposing (onClick)
import Model exposing (..)
import View.Pinguino exposing (..)


view : Piece -> Html Msg
view piece =
    View.Pinguino.view rotateClockwise rotateCounterclockwise piece


rotateClockwise : Html Msg
rotateClockwise =
    button
        [ onClick (RotateBrad Clockwise) ]
        [ text "Clockwise" ]


rotateCounterclockwise : Html Msg
rotateCounterclockwise =
    button
        [ onClick (RotateBrad Counterclockwise) ]
        [ text "Counterclockwise" ]
