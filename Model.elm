module Model exposing (..)


type Rotation
    = Clockwise
    | Counterclockwise


type Msg
    = RotateFred Rotation
    | RotateBrad Rotation
    | RotateDave Rotation
    | RotateStan Rotation
    | RotateAndy Rotation


type Sense
    = Up
    | Right
    | Down
    | Left


type Length
    = Three
    | Four


type alias Configuration =
    { board : Int
    , penguin : Int
    , length : Length
    , name : String
    }


type ConfigurationSelection
    = First
    | Second
    | Third


type alias Piece =
    { configuration : Configuration
    , sense : Sense
    , rotateClockwiseMsg : Msg
    , rotateCounterclockwiseMsg : Msg
    }


type alias Model =
    { fred : Piece
    , brad : Piece
    , dave : Piece
    , stan : Piece
    , andy : Piece
    }


senseToInt : Sense -> Int
senseToInt sense =
    case sense of
        Up ->
            0

        Right ->
            1

        Down ->
            2

        Left ->
            3


senseToString : Sense -> String
senseToString sense =
    case sense of
        Up ->
            "Up"

        Right ->
            "Right"

        Down ->
            "Down"

        Left ->
            "Left"


lengthToInt : Length -> Int
lengthToInt length =
    case length of
        Three ->
            3

        Four ->
            4
