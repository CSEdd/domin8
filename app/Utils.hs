module Utils where

import System.IO.Unsafe
import System.Random
import Data.Time.Clock.POSIX

shuffle' :: [a] -> StdGen -> [a]
shuffle' []   _   = []
shuffle' list generator = let (index,newGenerator) = randomR (0,length list -1) generator
                              (listUntilIndex, element:listAfterIndex) = splitAt index list
                         in  element : shuffle' (listUntilIndex ++ listAfterIndex) newGenerator

shuffle :: [a] -> [a]
shuffle [] = []
shuffle list = shuffle' list (mkStdGen $ round (unsafePerformIO getPOSIXTime))