(*3 min*)

fun f nil = nil
    | f(head::tail) = ((fn x => if x >= 0 then x*x-1 else x*x+1) head)::f(tail);

