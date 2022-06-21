(*3 min*)

fun contains(a, nil) = false
    | contains(a, head::tail) = if(a = head) then true else contains(a, tail);

fun nodup nil = 0
    | nodup (head::tail) = if(contains(head, tail)) then nodup(tail) else 1+nodup(tail);

nodup [2, 3, 1, 2, 1, 1, 5];