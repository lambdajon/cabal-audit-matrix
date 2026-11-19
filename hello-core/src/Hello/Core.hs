{-# LANGUAGE CPP #-}
{-# LANGUAGE OverloadedStrings #-}

module Hello.Core (greeting, greetingJson) where

import Data.ByteString.Lazy qualified as BL
import Data.Text (Text)
#ifdef JSON
import Data.Aeson (encode, object, (.=))
#endif

greeting :: Text
greeting = "Hello, World!"

greetingJson :: BL.ByteString
#ifdef JSON
greetingJson = encode (object ["greeting" .= greeting])
#else
greetingJson = "{}"
#endif
