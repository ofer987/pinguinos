module View.Pinguino exposing (view)

import Html.CssHelpers
import Html exposing (Html, div, text)
import Utilities.Conversion as Conversion
import List
import Utilities.List
import Model exposing (..)
import Model.Aliases exposing (..)
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
            (label piece.configuration.name :: rows length length (pinguinoRows piece))


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


pinguinoRows : Piece -> List (List Bool)
pinguinoRows piece =
    let
        length =
            lengthToInt piece.configuration.length
    in
        Conversion.toBinary length piece.configuration.board
            |> List.map Conversion.intToBool
            |> Utilities.List.toDoubleList length False
