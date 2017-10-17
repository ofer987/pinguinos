module Update exposing (update)

import Model exposing (..)
import Model.Type exposing (..)


update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    case msg of
        RotateFred roty ->
            ( { model | fred = newPiece roty model.fred }, Cmd.none )

        RotateBrad roty ->
            ( { model | brad = newPiece roty model.brad }, Cmd.none )

        RotateDave roty ->
            ( { model | dave = newPiece roty model.dave }, Cmd.none )

        RotateStan roty ->
            ( { model | stan = newPiece roty model.stan }, Cmd.none )

        RotateAndy roty ->
            ( { model | andy = newPiece roty model.andy }, Cmd.none )



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


newPiece : Rotation -> Piece -> Piece
newPiece rotation piece =
    { piece | sense = rotate rotation piece.sense }


rotate : Rotation -> Sense -> Sense
rotate rotation sense =
    case rotation of
        Clockwise ->
            rotateClockwise sense

        Counterclockwise ->
            rotateCounterclockwise sense


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
