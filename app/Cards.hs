module Cards where

type CardName       = String
type CardWorth      = Int
type VictoryPoints  = Int

data CardType = 
    Treasure | 
    Victory  | 
    Curse    | 
    Action   | 
    Reaction | 
    Attack   deriving (Show)

data Card = Card { 
    name :: CardName, 
    worth :: CardWorth, 
    cardType :: [CardType],
    victoryPoints :: VictoryPoints
    
} deriving (Show)

--              Name       Value    Type               Victory Points
copper   = Card "Copper"   0        [Treasure]         0
silver   = Card "Silver"   3        [Treasure]         0
gold     = Card "Gold"     3        [Treasure]         0

estate   = Card "Estate"   2        [Victory]          1
duchy    = Card "Duchy"    5        [Victory]          3
province = Card "Province" 8        [Victory]          6
curse    = Card "Curse"    0        [Curse]            (-1)

cellar   = Card "Cellar"   2        [Action]           0
moat     = Card "Moat"     2        [Action, Reaction] 0
village  = Card "Village"  3        [Action]           0
merchant = Card "Merchant" 3        [Action]           0
workshop = Card "Workshop" 3        [Action]           0
smithy   = Card "Smithy"   4        [Action]           0
remodel  = Card "Remodel"  4        [Action]           0
militia  = Card "Militia"  4        [Action, Attack]   0
market   = Card "Market"   5        [Action]           0
mine     = Card "Mine"     5        [Action]           0