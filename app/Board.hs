module Board where

import Cards

data CardPile       = CardPile      [Card]      deriving (Read, Show)

-- Global Cards
data BaseCards      = BaseCards     [CardPile]  deriving (Read, Show)
data KingdomCards   = KingdomCards  [CardPile]  deriving (Read, Show)

-- Player Cards
data Deck           = Deck          [Card]      deriving (Read, Show)
data DiscardPile    = DiscardPile   [Card]      deriving (Read, Show)

-- Global Player Cards
data TrashMat       = TrashMat      [Card]      deriving (Read, Show)

baseCards = BaseCards [
    CardPile $ replicate 30 copper, 
    CardPile $ replicate 30 silver, 
    CardPile $ replicate 30 gold,
    CardPile $ replicate  8 estate,
    CardPile $ replicate  8 duchy,
    CardPile $ replicate  8 province,
    CardPile $ replicate 10 curse ]

kingdomCards = KingdomCards [
    CardPile $ replicate 10 cellar,
    CardPile $ replicate 10 moat,
    CardPile $ replicate 10 village,
    CardPile $ replicate 10 merchant,
    CardPile $ replicate 10 workshop,
    CardPile $ replicate 10 smithy,
    CardPile $ replicate 10 remodel,
    CardPile $ replicate 10 militia,
    CardPile $ replicate 10 market, 
    CardPile $ replicate 10 mine ]

startingDeck = Deck $ replicate 3 estate ++ replicate 7 copper

trashMat = []