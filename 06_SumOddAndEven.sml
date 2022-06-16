fun sum(nil) = (0, 0)
    | sum([x]) = (0, x)
    | sum (x::y::tail) =
        let
            val (sumEven, sumOdd) = sum(tail)
        in
            (y+sumEven, x+sumOdd)
        end;

sum [2, 3, 4, 1]