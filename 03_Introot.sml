(*radice arrotondata in basso*)

fun introot(x) = 
    let
        fun aux(a, x) = if a*a <= x then aux(a+1, x) else a-1
    in
        aux(0, x)
    end;

introot(15);