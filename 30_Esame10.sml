datatype 'a btree = emptybt | consbt of 'a * 'a btree * 'a btree;

fun somma(emptybt) = 0
    | somma(consbt(c, ltree, rtree)) = c + somma(ltree) + somma(rtree);