module Utilities.Conversions exposing (toBinary, toDecimal)

import List
import Arithmetic


toBinary : Int -> Int -> List Int
toBinary length value =
    Arithmetic.toBase value 2
        |> List.reverse
        |> toLength length
        |> List.reverse


toLength : Int List Int -> List Int
toLength length list =
    if length > 0 then
        case list of
            head :: tail ->
                head :: toLength (length -1) tail

            [] ->
                0 :: toLength (length - 1) []
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
