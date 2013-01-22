maybeToMonad :: (MonadPlus m) => Maybe a -> m a
maybeToMonad Nothing  = mzero
maybeToMonad (Just s) = return s

parent :: (MonadPlus m) => Sheep -> m Sheep
parent s = (maybeToMonad(mother s)) `mplus` (maybeToMonad(father s))

grandparent :: (MonadPlus m) => Sheep -> m Sheep
grandparent s = ((maybeToMonad(mother s)) >>= parent) `mplus` ((maybeToMonad(father s)) >>= parent)
