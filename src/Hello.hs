module Hello (run) where

import Data.ByteString.Lazy.Char8 qualified as BL
import Data.Map.Strict qualified as Map
import Data.Text.IO qualified as T
import Hello.Core (greeting, greetingJson)

run :: IO ()
run = do
  T.putStrLn greeting
  BL.putStrLn greetingJson
  print (Map.fromList [(1 :: Int, "one" :: String)])
