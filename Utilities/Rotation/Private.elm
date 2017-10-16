module Utilities.Rotation.Private exposing (..)

import Array exposing (Array)
import List


-- length of vertical side: 3 or 4
-- column of horizontal side: 0 to 2 or 3
-- row of square: 0 to 2 or 3
-- default


clockwise : Int -> Int -> Int -> a -> Array a -> List a
clockwise length column row default source =
    if column < length then
        let
            sourceIndex =
                length * column + (length - row - 1)

            item =
                Array.get sourceIndex source
                    |> Maybe.withDefault default
        in
            item :: clockwise length (column + 1) row default source
    else if row < length then
        clockwise length 0 (row + 1) default source
    else
        []



-- length of vertical side: 3 or 4
-- column of horizontal side: 0 to 2 or 3
-- row of square: 0 to 2 or 3
-- default


counterClockwise : Int -> Int -> Int -> a -> Array a -> List a
counterClockwise length column row default source =
    if column < length then
        let
            sourceIndex =
                length * (length - column - 1) + row

            item =
                Array.get sourceIndex source
                    |> Maybe.withDefault default
        in
            item :: counterClockwise length (column + 1) row default source
    else if row < length then
        counterClockwise length 0 (row + 1) default source
    else
        []
