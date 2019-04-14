module Main where

import           Control.Lens
import           Network.Wreq

main :: IO ()
main = do
  let opts = defaults & param "datasource" .~ ["tranquility"]
  r <- getWith opts "https://esi.evetech.net/latest/markets/prices/"
  print $ r ^. responseStatus
