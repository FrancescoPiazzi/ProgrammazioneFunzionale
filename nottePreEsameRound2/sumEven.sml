(*33*)

fun sommali n nil = n
    | sommali n ([_]) = n
    | sommali n (head::next::tail) = next+((sommali n) tail);

sommali 4 [1, 2];
sommali 0 [1];
sommali 2 [1, 2, 3, 4, 5];