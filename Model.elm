module Model exposing (..)

import Model.Aliases exposing (..)
import Model.Pinguino.Fred as Fred
import Model.Pinguino.Brad as Brad
import Model.Pinguino.Dave as Dave
import Model.Pinguino.Stan as Stan
import Model.Pinguino.Andy as Andy


init : Model
init =
    { fred =
        { configuration = Fred.firstConfiguration
        , sense = Up
        }
    , brad =
        { configuration = Brad.firstConfiguration
        , sense = Up
        }
    , dave =
        { configuration = Dave.firstConfiguration
        , sense = Up
        }
    , stan =
        { configuration = Stan.firstConfiguration
        , sense = Up
        }
    , andy =
        { configuration = Andy.firstConfiguration
        , sense = Up
        }
    }


type Rotation
    = Clockwise
    | Counterclockwise


type Msg
    = RotateFred Rotation
    | RotateBrad Rotation
    | RotateDave Rotation
    | RotateStan Rotation
    | RotateAndy Rotation



-- | SetBrad ConfigurationSelection Sense
-- | SetDave ConfigurationSelection Sense
-- | SetStan ConfigurationSelection Sense
-- | SetAlan ConfigurationSelection Sense
