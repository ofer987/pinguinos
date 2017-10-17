module Utility.Conversion exposing (toBinary, toDecimal, intToBool)

import List
import Arithmetic


intToBool : Int -> Bool
intToBool value =
    if value == 0 then
        False
    else
        True


toBinary : Int -> Int -> List Int
toBinary length value =
    value
        |> Arithmetic.toBase 2
        |> List.reverse
        |> toLength length 0
        |> List.reverse


toLength : Int -> a -> List a -> List a
toLength length default list =
    if length > 0 then
        case list of
            head :: tail ->
                head :: toLength (length - 1) default tail

            [] ->
                default :: toLength (length - 1) default []
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
