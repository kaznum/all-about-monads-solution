parent :: Sheep -> Maybe Sheep
parent s = (mother s) `mplus` (father s)

grandparent :: Sheep -> Maybe Sheep
{-
the following line is incorrect because mplus only return the first value if both are not Nothing

grandparent s = (parent s) >>= parent
 -}
grandparent s = ((mother s) >>= parent) `mplus` ((father s) >>= parent)

