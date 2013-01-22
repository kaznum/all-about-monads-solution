parent :: Sheep -> [Sheep]
parent s = (maybeToList (mother s)) `mplus` (maybeToList(father s))

grandparent :: Sheep -> [Sheep]
grandparent s =
  ((maybeToList (mother s)) >>= parent) `mplus` ((maybeToList (father s)) >>= parent)
