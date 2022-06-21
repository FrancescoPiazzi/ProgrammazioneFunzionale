(*5 min*)

fun conta nil = 0
    | conta(head::tail) = if(List.exists(fn x => head=x) tail) then conta(tail) else 1+conta(tail);

conta [2, 3, 1, 2, 1, 1, 5];
conta [2, 3, 1];
conta [2, 3, 1, 2, 1, 1];