module View exposing (view)

import Html exposing (Html, div)
import View.Board exposing (view)
import View.Pinguino exposing (view)
import Model exposing (..)
import Model.Aliases exposing (..)


view : Model -> Html Msg
view model =
    div
        []
        [ View.Board.view model
        , View.Pinguino.view (model.fred)
        , View.Pinguino.view (model.brad)
        , View.Pinguino.view (model.dave)
        , View.Pinguino.view (model.stan)
        , View.Pinguino.view (model.andy)
        ]
