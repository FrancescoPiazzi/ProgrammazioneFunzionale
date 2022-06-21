(*10 min*)

fun sommali n nil = n
    | sommali n (head::nil) = n
    | sommali n (head::next::nil) = next + n
    | sommali n (head::next::list) = next + (sommali n list);

sommali 4 [1, 2];
sommali 0 [1];
sommali 2 [1, 2, 3, 4, 5];