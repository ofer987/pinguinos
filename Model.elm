module Model exposing (..)

import Model.Pinguin.Fred as Fred
import Model.Pinguin.Brad as Brad
import Model.Pinguin.Dave as Dave
import Model.Pinguin.Stan as Stan


type Msg
    = None
    | SetFred Fred.ConfigurationSelection Sense
    | SetBrad Brad.ConfigurationSelection Sense
    | SetDave Dave.ConfigurationSelection Sense
    | SetStan Stan.ConfigurationSelection Sense
    | SetAlan Alan.ConfigurationSelection Sense
