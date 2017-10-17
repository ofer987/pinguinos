module Model.Pinguino.Stan exposing (..)

import Model exposing (Configuration, ConfigurationSelection(..), Length(..))


firstConfiguration : Configuration
firstConfiguration =
    { board = 94
    , penguin = 2
    , length = Three
    , name = "Stan"
    }


secondConfiguration : Configuration
secondConfiguration =
    { board = 182
    , penguin = 2
    , length = Three
    , name = "Stan"
    }


thirdConfiguration : Configuration
thirdConfiguration =
    { board = 179
    , penguin = 1
    , length = Three
    , name = "Stan"
    }


getConfiguration : ConfigurationSelection -> Configuration
getConfiguration value =
    case value of
        First ->
            firstConfiguration

        Second ->
            secondConfiguration

        Third ->
            thirdConfiguration
