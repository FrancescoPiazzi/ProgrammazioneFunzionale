datatype FOR = For of int * (int -> int);

val rec ciclofor = fn For(n, f) =>
    fn x => 
        if n = 0 then x 
        else ciclofor(For(n-1, f)) (f x);
