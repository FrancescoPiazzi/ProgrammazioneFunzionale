fun sumPairs(nil) = nil
    | sumPairs(head::tail) = 
        let
            val (h1, h2) = head
        in
            (h1 + h2)::sumPairs(tail)
        end;

sumPairs [(2, 3), (4, 7)]