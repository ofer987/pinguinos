module Main exposing (..)

import Html
import Init exposing (..)
import Model exposing (..)
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
    ( modelInit, Cmd.none )



-- SUBSCRIPTIONS


subscriptions : Model -> Sub Msg
subscriptions model =
    Sub.none
