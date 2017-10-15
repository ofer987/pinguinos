module Utilities.List exposing (toDoubleList)

import List
import Array exposing (Array)


toDoubleList : Int -> Int -> Int -> a -> List a -> List (List a)
toDoubleList count row size default values =
    rows 0 size default (Array.fromList values)


index : Int -> Int -> Int -> Int
index x y size =
    (y * size) + x


value : Int -> Int -> Int -> a -> Array a -> a
value x y size default array =
    array
        |> Array.get (index x y size)
        |> Maybe.withDefault default


row : Int -> Int -> Int -> a -> Array a -> List a
row count y size default array =
    if count < size then
        value count y size default array :: row (count + 1) y size default array
    else
        []


rows : Int -> Int -> a -> Array a -> List (List a)
rows y size default array =
    let
        length =
            Array.length array
    in
        if y * size < length then
            row 0 y size default array :: rows (y + 1) size default array
        else
            []
