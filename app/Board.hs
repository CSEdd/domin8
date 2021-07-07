module Board where

import Cards

data CardPile       = CardPile      [Card]      deriving (Show)
data BaseCards      = BaseCards     [CardPile]  deriving (Show)
data KingdomCards   = KingdomCards  [CardPile]  deriving (Show)
data TrashMat       = TrashMat      [Card]      deriving (Show)

baseCards = [
    replicate 30 copper, 
    replicate 30 silver, 
    replicate 30 gold,
    replicate  8 estate,
    replicate  8 duchy,
    replicate  8 province,
    replicate 10 curse ]

kingdomCards = [
    replicate 10 cellar,
    replicate 10 moat,
    replicate 10 village,
    replicate 10 merchant,
    replicate 10 workshop,
    replicate 10 smithy,
    replicate 10 remodel,
    replicate 10 militia,
    replicate 10 market, 
    replicate 10 mine ]

trashMat = []