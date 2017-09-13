module Update exposing (update)

import Model exposing (..)
import Tuple exposing (first, second, third, fourth, fifth)

update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    case msg of
        SetFred configuration ->
            ( ( configuration
              , second model
              , third model
              , fourth model
              )
            , Cmd.none
            )

        SetBrad configuration ->
            ( ( first model
              , configuration
              , third model
              , fourth model
              )
            , Cmd.none
            )

        SetDave configuration ->
            ( ( first model
              , second model
              , configuration
              , fourth model
              )
            , Cmd.none
            )

        SetStan configuration ->
            ( ( first model
              , second model
              , third model
              , configuration
              )
            , Cmd.none
            )
