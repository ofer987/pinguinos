module Update exposing (update)

import Model exposing (..)
import Model.Aliases exposing (..)


update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    case msg of
        RotateFred Clockwise ->
            let
                currentFred =
                    model.fred

                currentSense =
                    currentFred.sense

                newFred =
                    { currentFred | sense = rotateClockwise currentSense }

                newModel =
                    { model | fred = newFred }
            in
                ( newModel, Cmd.none )

        RotateFred Counterclockwise ->
            let
                currentFred =
                    model.fred

                currentSense =
                    currentFred.sense

                newFred =
                    { currentFred | sense = rotateCounterclockwise currentSense }

                newModel =
                    { model | fred = newFred }
            in
                ( newModel, Cmd.none )

        RotateBrad rotation ->
            ( model, Cmd.none )

        RotateDave rotation ->
            ( model, Cmd.none )

        RotateStan rotation ->
            ( model, Cmd.none )

        RotateAndy rotation ->
            ( model, Cmd.none )



-- SetFred configuration ->
--     ( ( configuration
--       , second model
--       , third model
--       , fourth model
--       )
--     , Cmd.none
--     )
--
-- SetBrad configuration ->
--     ( ( first model
--       , configuration
--       , third model
--       , fourth model
--       )
--     , Cmd.none
--     )
--
-- SetDave configuration ->
--     ( ( first model
--       , second model
--       , configuration
--       , fourth model
--       )
--     , Cmd.none
--     )
--
-- SetStan configuration ->
--     ( ( first model
--       , second model
--       , third model
--       , configuration
--       )
--     , Cmd.none
--     )


rotateClockwise : Sense -> Sense
rotateClockwise current =
    case current of
        Up ->
            Right

        Right ->
            Down

        Down ->
            Left

        Left ->
            Up


rotateCounterclockwise : Sense -> Sense
rotateCounterclockwise current =
    case current of
        Up ->
            Left

        Left ->
            Down

        Down ->
            Right

        Right ->
            Up
