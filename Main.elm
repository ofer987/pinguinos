module Main exposing (..)

import Html
import Model exposing (..)
import Model.Aliases exposing (..)
import Update exposing (update)
import View exposing (view)


-- INIT


main : Program Never Model Msg
main =
    Html.program
        { init = init
        , update = update
        , subscriptions = subscriptions
        , view = view
        }


init : ( Model, Cmd Msg )
init =
    ( Model.init, Cmd.none )



-- SUBSCRIPTIONS


subscriptions : Model -> Sub Msg
subscriptions model =
    Sub.none
