module Utilities.Rotation exposing (counterClockwise, clockwise)

import Model.Pinguin.Fred exposing (..)
import Utilities.Rotation.Private as Private
import Utilities.Conversions as Conversions
import Array exposing (Array)


clockwise : Configuration -> Configuration
clockwise config =
    let
        board : Int
        board =
            config.board
                |> Conversions.toBinary (config.length ^ 2)
                |> Array.fromList
                |> Private.clockwise config.length 0 0 0
                |> Conversions.toDecimal
    in
        { config | board = board }


counterClockwise : Configuration -> Configuration
counterClockwise config =
    let
        board : Int
        board =
            config.board
                |> Conversions.toBinary (config.length ^ 2)
                |> Array.fromList
                |> Private.counterClockwise config.length 0 0 0
                |> Conversions.toDecimal
    in
        { config | board = board }
