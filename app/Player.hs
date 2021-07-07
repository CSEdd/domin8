{-# LANGUAGE TemplateHaskell #-}

module Player where

import Control.Lens

import Board
import Cards
import Utils

type Name = String

data Hand = Hand [Card] deriving (Read, Show)

data Player = Player {
    _playerName          :: Name,
    _hand                :: Hand,
    _deck                :: Board.Deck,
    _discardPile         :: Board.DiscardPile,
    _totalVictoryPoints  :: VictoryPoints
} deriving (Read, Show)

makeLenses ''Player

initializePlayer :: String -> Player
initializePlayer playerName =
    Player {
        _playerName          = playerName,
        _hand                = startingHand,
        _deck                = startingDeck,
        _discardPile         = startingDiscardPile,
        _totalVictoryPoints  = startingPoints
    } where startingHand        = Hand []
            startingDeck        = Board.startingDeck
            startingDiscardPile = DiscardPile []
            startingPoints      = 0
