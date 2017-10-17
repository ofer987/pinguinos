module View.Board exposing (view)

import Html.CssHelpers
import Html exposing (Html, div)
import Model exposing (..)
import Model.Type exposing (..)
import MyCss exposing (..)


{ id, class, classList } =
    Html.CssHelpers.withNamespace "Pinguinos"


view : Model -> Html Msg
view model =
    div
        [ class [ Board ] ]
        rows


rows : List (Html Msg)
rows =
    [ row
    , row
    , row
    , row
    , row
    ]


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
        [ ]
