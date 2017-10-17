module View.Pinguino.Stan exposing (view)

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
        [ onClick (RotateStan Clockwise) ]
        [ text "Clockwise" ]


rotateCounterclockwise : Html Msg
rotateCounterclockwise =
    button
        [ onClick (RotateStan Counterclockwise) ]
        [ text "Counterclockwise" ]
