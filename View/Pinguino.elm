module View.Pinguino exposing (view)

import Html.CssHelpers
import Html exposing (Html, div, text, button)
import Html.Events exposing (onClick)
import Utility.Conversion as Conversion
import Utility.Rotation as Rotation
import List
import Utility.List
import Model exposing (..)
import Model.Type exposing (..)
import MyCss exposing (..)


{ id, class, classList } =
    Html.CssHelpers.withNamespace "Pinguinos"


view : Piece -> Html Msg
view piece =
    let
        length =
            lengthToInt piece.configuration.length
    in
        div
            [ class [ Pinguino ] ]
            (label piece.configuration.name :: rotation piece.sense :: rotateClockwise piece.rotateClockwiseMsg :: rotateCounterclockwise piece.rotateCounterclockwiseMsg :: rows length length (pinguinoRows piece))


label : String -> Html Msg
label name =
    div [] [ text name ]


rows : Int -> Int -> List (List Bool) -> List (Html Msg)
rows length columnLength pinguino =
    case pinguino of
        head :: tail ->
            if length > 0 then
                row columnLength head :: rows (length - 1) columnLength tail
            else
                []

        [] ->
            []


row : Int -> List Bool -> Html Msg
row columnLength pinguinoRow =
    div
        [ class [ Row ] ]
        (columns columnLength pinguinoRow)


columns : Int -> List Bool -> List (Html Msg)
columns length pinguinoRow =
    case pinguinoRow of
        head :: tail ->
            if length > 0 then
                column head :: columns (length - 1) tail
            else
                []

        [] ->
            []


column : Bool -> Html Msg
column pinguinoColumn =
    let
        filledClass =
            if pinguinoColumn == True then
                Filled
            else
                Column
    in
        div
            [ class [ filledClass ] ]
            []


rotateClockwise : Msg -> Html Msg
rotateClockwise msg =
    button
        [ onClick msg ]
        [ text "Clockwise" ]


rotateCounterclockwise : Msg -> Html Msg
rotateCounterclockwise msg =
    button
        [ onClick msg ]
        [ text "Counterclockwise" ]


rotation : Sense -> Html Msg
rotation sense =
    div [] [ text (senseToString sense) ]


rotatePinguino : Sense -> Int -> Int -> Int
rotatePinguino sense length board =
    case sense of
        Up ->
            board

        Right ->
            board
                |> Rotation.clockwise length

        Down ->
            board
                |> Rotation.clockwise length
                |> Rotation.clockwise length

        Left ->
            board
                |> Rotation.counterClockwise length


pinguinoRows : Piece -> List (List Bool)
pinguinoRows piece =
    let
        length =
            lengthToInt piece.configuration.length

        board =
            rotatePinguino piece.sense length piece.configuration.board
    in
        Conversion.toBinary (length ^ 2) board
            |> List.map Conversion.intToBool
            |> Utility.List.toDoubleList length False
