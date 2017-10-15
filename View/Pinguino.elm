module View.Pinguino exposing (view)

import Html.CssHelpers
import Html exposing (Html, div)
import Model exposing (..)
import Model.Aliases exposing (..)
import MyCss exposing (..)


{ id, class, classList } =
    Html.CssHelpers.withNamespace "Pinguinos"


view : Piece -> Html Msg
view piece =
    div
        [ class [ Pinguino ] ]
        (rows (lengthToInt piece.configuration.length))


rows : Int -> List (Html Msg)
rows length =
    if length > 0 then
        row :: rows (length - 1)
    else
        []


row : Html Msg
row =
    div
        [ class [ Row ] ]
        columns


columns : List (Html Msg)
columns =
    [ column
    , column
    , column
    , column
    , column
    ]


column : Html Msg
column =
    div
        [ class [ Column ] ]
        []
