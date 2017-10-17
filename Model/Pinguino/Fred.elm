module Model.Pinguino.Fred exposing (..)

import Model exposing (Configuration, ConfigurationSelection (..), Length (..))


firstConfiguration : Configuration
firstConfiguration =
    { board = 409
    , penguin = 1
    , length = Three
    , name = "Fred"
    }


secondConfiguration : Configuration
secondConfiguration =
    { board = 434
    , penguin = 2
    , length = Three
    , name = "Fred"
    }


thirdConfiguration : Configuration
thirdConfiguration =
    { board = 242
    , penguin = 2
    , length = Three
    , name = "Fred"
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
