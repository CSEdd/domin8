module Main where

import Control.Lens

import Board
import Cards
import Player
import Utils

main :: IO ()
main = do
    let edd = initializePlayer "Edd"
    putStrLn $ edd ^. playerName
