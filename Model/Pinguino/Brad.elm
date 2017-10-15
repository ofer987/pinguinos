module Model.Pinguino.Brad exposing (..)

import Model.Aliases exposing (Configuration, ConfigurationSelection (..), Length (..))


firstConfiguration : Configuration
firstConfiguration =
    { board = 52352
    , penguin = 16384
    , length = Four
    , name = "Brad"
    }


secondConfiguration : Configuration
secondConfiguration =
    { board = 36032
    , penguin = 1024
    , length = Four
    , name = "Brad"
    }


thirdConfiguration : Configuration
thirdConfiguration =
    { board = 35012
    , penguin = 64
    , length = Four
    , name = "Brad"
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
