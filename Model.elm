module Model exposing (..)

import Model.Aliases exposing (..)
import Model.Pinguino.Fred as Fred
import Model.Pinguino.Brad as Brad
import Model.Pinguino.Dave as Dave
import Model.Pinguino.Stan as Stan
import Model.Pinguino.Andy as Andy


init : Model
init =
    ( { configuration = Fred.firstConfiguration
      , sense = Up
      }
    , { configuration = Brad.firstConfiguration
      , sense = Up
      }
    , { configuration = Dave.firstConfiguration
      , sense = Up
      }
    , { configuration = Stan.firstConfiguration
      , sense = Up
      }
    , { configuration = Andy.firstConfiguration
      , sense = Up
      }
    )


type Msg
    = None
    | SetFred ConfigurationSelection Sense
    | SetBrad ConfigurationSelection Sense
    | SetDave ConfigurationSelection Sense
    | SetStan ConfigurationSelection Sense
    | SetAlan ConfigurationSelection Sense
