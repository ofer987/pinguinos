module Model.Board exposing (pieceOnBoard)

import List
import Utilities.List exposing (..)

import Utilities.Conversions as Conversion

import Model.Pinguin.Fred as Fred
import Model.Pinguin.Brad as Brad
import Model.Pinguin.Dave as Dave
import Model.Pinguin.Stan as Stan
import Model.Pinguin.Andy as Andy


type alias Board =
    { fred : Maybe (Fred.Configuration Int Int)
    , brad : Maybe (Brad.Configuration Int Int)
    , dave : Maybe (Dave.Configuration Int Int)
    , stan : Maybe (Stan.Configuration Int Int)
    , andy : Maybe (Andy.Configuration Int Int)
    }


pieceOnBoard : Int -> Int -> Piece -> List Int
pieceOnBoard x y piece
    let
        doubleList =
            piece
                |> Piece.toInt
                |> Conversion.toBinary 25
                |> List.toDoubleList 0 0 5 0

    in
        rows x y doubleList

getSpaces : Board -> List List Bool
getSpaces model =
    case model.fred of
        None ->
            0

        Just config x y ->
            Fred.getSpaces config
                |> List.map


margin : Int -> List Bool
margin length =
    if length > 0 then
        0 :: margin (length - 1)
    else
        []


rows : Int -> Int -> List (List Int) -> List Int
rows x y doubleList =
    let
        bottomMargin =
            margin (y * 5)

        topMargin =
            margin ((5 * 5) - (y * 5) - (length * 5))
    in
        bottomMargin :: boardRows length 0 doubleList :: topMargin


row : List Int -> Int -> Int -> List Int
row values length x =
    let
        rightMargin =
            margin x

        leftMargin =
            margin (5 - x - length)
    in
        leftMargin :: values :: rightMargin


boardRows : Int -> Int -> List (List Int) -> List Int
boardRows length x doubleList =
    case doubleList of
        head :: tail ->
            row head length x :: boardRows tail length x

        [] ->
            []
