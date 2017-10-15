module Model.Pinguino.Dave exposing (..)

import Model.Aliases exposing (Configuration, ConfigurationSelection (..), Length (..))


firstConfiguration : Configuration
firstConfiguration =
    { board = 50720
    , penguin = 32
    , length = Three
    }


secondConfiguration : Configuration
secondConfiguration =
    { board = 52288
    , penguin = 64
    , length = Three
    }


thirdConfiguration : Configuration
thirdConfiguration =
    { board = 27712
    , penguin = 64
    , length = Three
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
