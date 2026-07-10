module Test.DIFF.Interpreter exposing (suite)

import DIFF.Interpreter as I exposing (Value(..))
import Test exposing (Test, describe)
import Test.Lib exposing (testValue)


suite : Test
suite =
    describe "DIFF.Interpreter"
        [ describe "run" <|
            List.map (testValue I.run)
                [ ( "123", Just (VNumber 123) )
                , ( "123 ", Just (VNumber 123) )
                , ( "123  ", Just (VNumber 123) )
                , ( " 123", Just (VNumber 123) )
                , ( "  123", Just (VNumber 123) )
                , ( "onetwothree", Nothing )
                ]
        ]
