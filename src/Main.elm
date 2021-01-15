module Main exposing (..)

import Html exposing (Html)
import Browser exposing (Document)
import Element exposing (..)
import Element.Background as Background
import Element.Font as Font
import Element.Input
import Element.Lazy




-- MAIN


main =
  Browser.document
    { init = init
    , view = view
    , update = update
    , subscriptions = subscriptions
    }


type alias Document msg =
  { title : String
  , body : List (Html.Html msg)
  }



-- MODEL


type alias Model = ()


init : () -> (Model, Cmd Msg)
init _ =
  ( ()
  , Cmd.none
  )



-- UPDATE


type Msg
  = Msg ()
  | DoSomething


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
      [ Element.layout
          [ Background.color (rgba 0 0 0 1)
          , Font.color (rgba 1 1 1 1)
          , Font.italic
          , Font.size 32
          , Font.family
              [ Font.external
                  { url = "https://fonts.googleapis.com/css?family=EB+Garamond"
                  , name = "EB Garamond"
                  }
              , Font.sansSerif
              ]
          ]
      <|
          el
              [ centerX, centerY ]
              (text "Het is een huis!")
      ]
    }



-- HTTP


