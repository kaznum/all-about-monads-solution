parent :: Sheep -> [Sheep]
parent s = (maybeToList (mother s)) `mplus` (maybeToList(father s))

grandparent :: Sheep -> [Sheep]
grandparent s = (parent s) >>= parent
