module Model.Pinguino.Andy exposing (..)

import Model.Aliases exposing (Configuration, ConfigurationSelection (..), Length (..))


firstConfiguration : Configuration
firstConfiguration =
    { board = 63488
    , penguin = 2048
    , length = Four
    , name = "Andy"
    }


secondConfiguration : Configuration
secondConfiguration =
    { board = 62464
    , penguin = 1024
    , length = Four
    , name = "Andy"
    }


thirdConfiguration : Configuration
thirdConfiguration =
    { board = 61952
    , penguin = 512
    , length = Four
    , name = "Andy"
    }

-- TODO: Add a fourth configuration!
fourthConfiguration : Configuration
fourthConfiguration =
    { board = 61696
    , penguin = 256
    , length = Four
    , name = "Andy"
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
