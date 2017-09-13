module Utilities.Conversions exposing (toBinary, toDecimal)

import List
import Arithmetic


toBinary : Int -> Int -> List Int
toBinary length value =
    Arithmetic.toBase value 2
        |> List.reverse
        |> toLength length 0
        |> List.reverse


toLength : Int -> Int -> List Int -> List Int
toLength length pos remaining =
    case remaining of
        head :: tail ->
            head :: toLength length (pos + 1) tail

        [] ->
            if pos < length then
                0 :: toLength length (pos + 1) []
            else
                []


toDecimal : List Int -> Int
toDecimal binary =
    List.reverse binary
        |> toDecimalInternal 0


toDecimalInternal : Int -> List Int -> Int
toDecimalInternal pos binary =
    case binary of
        head :: tail ->
            head * (2 ^ pos) + toDecimalInternal (pos + 1) tail

        [] ->
            0
