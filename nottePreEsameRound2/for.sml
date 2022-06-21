(*4 min*)

datatype FOR = For of int * (int -> int);

fun eval(For(n, f)) = (fn x => if(n=0) then x else eval(For(n-1, f)) (f x));

eval(For(4, fn x=>x*2)) 3;