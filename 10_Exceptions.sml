exception InvalidInput of int
fun fact(0) = 1
    | fact(n) = 
        if n < 0 then raise InvalidInput(n)
        else n*fact(n-1);

fact(5);
(*fact(~2);*)


exception ShortList of int
fun nthElement(n, nil) = raise ShortList(n)
    | nthElement(n, head::tail) = if n=0 then head else nthElement(n-1, tail);

nthElement(2, [1, 2, 5, 1, 2, 3])
(*nthElement(24, [1, 2, 5, 1, 2, 3])*)