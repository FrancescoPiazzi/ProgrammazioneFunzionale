(*2 min*)

fun ordered nil = true
    | ordered([_]) = true
    | ordered(head::next::tail) = if(head <= next) then ordered(next::tail) else false;

ordered [1, 2, 3];
ordered [1, 5, 3];
ordered [1, 2, 3, 4];
ordered [1, 2, 3, 1];
ordered [1, 2, 3, 7, 1];