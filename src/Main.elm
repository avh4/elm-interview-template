module Main exposing (..)

import Color exposing (Color)
import Html exposing (Html)
import Html.Attributes as Html
import Html.App


main : Program Never
main =
    Html.App.beginnerProgram
        { model = ()
        , update = \_ _ -> ()
        , view = \_ -> square Color.yellow 500 500
        }


square : Color -> Int -> Int -> Html msg
square color width height =
    let
        { red, green, blue, alpha } =
            Color.toRgb color

        colorString =
            "rgba(" ++ toString red ++ "," ++ toString green ++ "," ++ toString blue ++ "," ++ toString alpha ++ ")"
    in
        Html.div
            [ Html.style
                [ ( "width", toString width ++ "px" )
                , ( "height", toString height ++ "px" )
                , ( "background-color", colorString )
                ]
            ]
            []
