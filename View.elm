module View exposing (view)

import Html exposing (Html)

import View.Board exposing (view)
import Model exposing (..)


view : Model -> Html Msg
view model =
    View.Board.view model


-- emptyBoard : Html Msg
-- emptyBoard =
--     div
--         [ EmptyBoard ]
--         [ ( emptyRow, emptyRow, emptyRow, emptyRow, emptyRow )
--         ]
--
--
-- emptyRow : ( Html Msg, Html Msg, Html Msg, Html Msg, Html Msg )
-- emptyRow =
--     ( emptyCell, emptyCell, emptyCell, emptyCell, emptyCell )
--
--
-- emptyCell : Html Msg
-- emptyCell =
--     div
--         [ EmptyCell ]
--         []
