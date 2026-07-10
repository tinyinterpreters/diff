module Test.DIFF.Parser exposing (suite)

import DIFF.AST as AST exposing (..)
import DIFF.Parser as P
import Test exposing (Test, describe)
import Test.Lib exposing (testValue)


suite : Test
suite =
    describe "DIFF.Parser"
        [ describe "parse" <|
            List.map (testValue P.parse)
                [ ( "123", Just (Program (Const 123)) )
                , ( "123 ", Just (Program (Const 123)) )
                , ( "123  ", Just (Program (Const 123)) )
                , ( " 123", Just (Program (Const 123)) )
                , ( "  123", Just (Program (Const 123)) )
                , ( "onetwothree", Nothing )
                ]
        ]
