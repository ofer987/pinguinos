module View exposing (view)

import Model exposing (..)


view : Model -> Html Msg
view model =
    div
        []
        []


emptyBoard : Html Msg
emptyBoard =
    div
        [ EmptyBoard ]
        [ ( emptyRow, emptyRow, emptyRow, emptyRow, emptyRow )
        ]


emptyRow : ( Html Msg, Html Msg, Html Msg, Html Msg, Html Msg )
emptyRow =
    ( emptyCell, emptyCell, emptyCell, emptyCell, emptyCell )


emptyCell : Html Msg
emptyCell =
    div
        [ EmptyCell ]
        []

drawBoard : Model -> Html Msg
drawBoard model =
    
