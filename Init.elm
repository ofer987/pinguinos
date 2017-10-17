module Init exposing (modelInit)

import Model exposing (..)
import Model.Pinguino.Fred as Fred
import Model.Pinguino.Brad as Brad
import Model.Pinguino.Dave as Dave
import Model.Pinguino.Stan as Stan
import Model.Pinguino.Andy as Andy


modelInit : Model
modelInit =
    { fred =
        { configuration = Fred.firstConfiguration
        , sense = Up
        , rotateClockwiseMsg = RotateFred Clockwise
        , rotateCounterclockwiseMsg = RotateFred Counterclockwise
        }
    , brad =
        { configuration = Brad.firstConfiguration
        , sense = Up
        , rotateClockwiseMsg = RotateBrad Clockwise
        , rotateCounterclockwiseMsg = RotateBrad Counterclockwise
        }
    , dave =
        { configuration = Dave.firstConfiguration
        , sense = Up
        , rotateClockwiseMsg = RotateDave Clockwise
        , rotateCounterclockwiseMsg = RotateDave Counterclockwise
        }
    , stan =
        { configuration = Stan.firstConfiguration
        , sense = Up
        , rotateClockwiseMsg = RotateStan Clockwise
        , rotateCounterclockwiseMsg = RotateStan Counterclockwise
        }
    , andy =
        { configuration = Andy.firstConfiguration
        , sense = Up
        , rotateClockwiseMsg = RotateAndy Clockwise
        , rotateCounterclockwiseMsg = RotateAndy Counterclockwise
        }
    }
