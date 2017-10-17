module Utility.Rotation exposing (counterClockwise, clockwise)

import Model.Pinguino.Fred exposing (..)
import Utility.Rotation.Private as Private
import Utility.Conversion as Conversion
import List
import Array exposing (Array)


clockwise : Int -> Int -> Int
clockwise length board =
    board
        |> Conversion.toBinary (length ^ 2)
        |> Array.fromList
        |> Private.clockwise length 0 0 0
        |> List.reverse
        |> Conversion.toDecimal


counterClockwise : Int -> Int -> Int
counterClockwise length board =
    board
        |> Conversion.toBinary (length ^ 2)
        |> Array.fromList
        |> Private.counterClockwise length 0 0 0
        |> List.reverse
        |> Conversion.toDecimal