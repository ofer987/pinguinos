module Model.Aliases exposing (Configuration, ConfigurationSelection, Sense, Piece, Model, Length, senseToInt)


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
    }


type ConfigurationSelection
    = First
    | Second
    | Third


type alias Piece =
    { configuration : Configuration
    , sense : Sense
    }


type alias Model =
    ( Piece, Piece, Piece, Piece, Piece )


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


lengthToInt : Length -> Int
lengthToInt length =
    case length of
        Three ->
            3

        Four ->
            4
