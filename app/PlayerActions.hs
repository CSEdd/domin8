module PlayerActions where

import Control.Lens
import Data.List

import Board
import Cards
import Player
import Utils

addToHand :: Player -> Card -> Player
addToHand player card =
    player & hand .~ (newCard : [originalHand]) !! 0
    where originalHand = player ^. hand
          newCard = Hand [card]
