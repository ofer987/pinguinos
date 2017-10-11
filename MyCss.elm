module MyCss exposing (..)

import Css exposing (..)
import Css.Elements exposing (body, div, h2, svg, img, line)
import Css.Colors exposing (gray, blue)
import Css.Namespace exposing (namespace)


grey : Color
grey =
    gray


type CssClasses
    = Board
    | Row
    | Column
    | Pinguino


css : Stylesheet
css =
    (stylesheet << namespace "Pinguinos")
        [ body []
        , img [ width inherit ]
        , class Board
            [ children
                [ class Row
                    [ width (px 250)
                    , height (px 50)
                    , children
                        [ class Column
                            [ width (px 50)
                            , height (px 50)
                            , backgroundColor blue
                            , display inlineBlock
                            ]
                        ]
                    ]
                ]
            ]

        -- , class Company
        --     [ margin2 (px 80) (px 0)
        --     , nthChild "even"
        --         [ children
        --             [ div
        --                 [ nthChild "odd" [ property "order" "0" ]
        --                 ]
        --             , div
        --                 [ nthChild "even" [ property "order" "1" ]
        --                 ]
        --             ]
        --         ]
        --     , nthChild "odd"
        --         [ children
        --             [ div
        --                 [ nthChild "odd" [ property "order" "1" ]
        --                 ]
        --             , div
        --                 [ nthChild "even" [ property "order" "0" ]
        --                 ]
        --             ]
        --         ]
        --     ]
        ]
