fun split(nil) = (nil, nil)
    | split([a]) = ([a], nil)
    | split(a::b::x) =
        let
            val s = split(x)
            val first = #1 s
            val second = #2 s
        in
            (a::first, b::second)
        end;

split [1, 2, 3, 4, 5]