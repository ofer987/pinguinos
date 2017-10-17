module Model.Pinguino.Dave exposing (..)

import Model.Type exposing (Configuration, ConfigurationSelection (..), Length (..))


firstConfiguration : Configuration
firstConfiguration =
    { board = 457
    , penguin = 1
    , length = Three
    , name = "Dave"
    }


secondConfiguration : Configuration
secondConfiguration =
    { board = 121
    , penguin = 1
    , length = Three
    , name = "Dave"
    }


thirdConfiguration : Configuration
thirdConfiguration =
    { board = 79
    , penguin = 1
    , length = Three
    , name = "Dave"
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
