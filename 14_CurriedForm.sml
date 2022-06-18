fun add(x, y) = x+y;
fun addCurry1 x = fn y => x+y;
val addCurry2 = fn x => fn y => x+y;

(*  4 is applied to addCurry1,
    that returns a function that takes as input y and returns 4+y 
    then 6 is applied to the result
*)
addCurry1 4 6;

(*you can specify one argument now and the other later*)
val f = addCurry2 3;
f 1;