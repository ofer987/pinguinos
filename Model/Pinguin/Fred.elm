module Model.Pinguin.Fred exposing (..)

import Model.Aliases exposing (Configuration, ConfigurationSelection)


firstConfiguration : Configuration
firstConfiguration =
    { board = 50720
    , penguin = 32
    , length = 3
    }


secondConfiguration : Configuration
secondConfiguration =
    { board = 52288
    , penguin = 64
    , length = 3
    }


thirdConfiguration : Configuration
thirdConfiguration =
    { board = 27712
    , penguin = 64
    , length = 3
    }


getConfiguration : ConfigurationSelection -> Configuration
getConfiguration value =
    case value of
        ConfigurationSelection.First ->
            firstConfiguration

        ConfigurationSelection.Second ->
            secondConfiguration

        ConfigurationSelection.Third ->
            thirdConfiguration
