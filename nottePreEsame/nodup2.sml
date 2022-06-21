(*4 min*)

fun nodup nil = 0
    | nodup(head::tail) = if(List.exists(fn x => head = x) tail) then nodup(tail) else 1+nodup(tail);

nodup [2, 3, 1, 2, 1, 1, 5];
nodup [2, 3, 1];
nodup [2, 3, 1, 2, 1, 1];