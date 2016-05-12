module Tests exposing (all)

import ElmTest exposing (..)


all : Test
all =
    suite "all tests"
        [ test "example test"
            <| assertEqual 2 (1 + 1)
        ]
