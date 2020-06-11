{-# LANGUAGE OverloadedStrings #-}
module TestContainer.Image
  (
    -- * Collection of pre-defined Docker images
    redis

  , mongo

    -- * Building and managing images
  , module Docker

  ) where

import           TestContainer.Docker as Docker (Image (..), ToImage, build,
                                                 fromBuildContext,
                                                 fromDockerfile, fromTag,
                                                 fromTarballContext)


-- | Image for Redis database.
--
-- @
-- redis = fromTag "redis:5.0"
-- @
redis :: ToImage
redis =
  fromTag "redis:5.0"


-- | Image for Mongo database.
--
-- @
-- mongo = Tag "mongo:4.0.17"
-- @
mongo :: ToImage
mongo =
  fromTag "mongo:4.0.17"
