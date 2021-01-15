module Main exposing (..)

import Browser exposing (Document)
import Html exposing (..)



-- MAIN


main =
  Browser.document
    { init = init
    , view = view
    , update = update
    , subscriptions = subscriptions
    }



-- MODEL


type alias Model = ()


init : () -> (Model, Cmd Msg)
init _ =
  ( ()
  , Cmd.none
  )



-- UPDATE


type Msg = Msg ()


update : Msg -> Model -> (Model, Cmd Msg)
update msg model = (model, Cmd.none)



-- SUBSCRIPTIONS


subscriptions : Model -> Sub Msg
subscriptions model = 
  Sub.none



-- VIEW


view : Model -> Document Msg
view model = 
  { title = "Oude Delft 119"
  , body = 
    [ h1 [] [ text "Het is een huis!" ]
    ]
  }



-- HTTP
