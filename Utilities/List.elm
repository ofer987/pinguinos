module Utilities.List exposing (toDoubleList)

import List
import Array exposing (Array)


toDoubleList : Int -> a -> List a -> List (List a)
toDoubleList length default values =
    rows 0 length default (Array.fromList values)


index : Int -> Int -> Int -> Int
index x y length =
    (y * length) + x


value : Int -> Int -> Int -> a -> Array a -> a
value x y length default array =
    array
        |> Array.get (index x y length)
        |> Maybe.withDefault default


row : Int -> Int -> Int -> a -> Array a -> List a
row count y length default array =
    if count < length then
        value count y length default array :: row (count + 1) y length default array
    else
        []


rows : Int -> Int -> a -> Array a -> List (List a)
rows y length default array =
    let
        count =
            Array.length array
    in
        if y * length < count then
            row 0 y length default array :: rows (y + 1) length default array
        else
            []
