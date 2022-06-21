fun pari(nil) = nil
    | pari(head::tail) = if tail = nil then nil else hd(tail)::(pari(tl(tail)));

pari [2, 1, 3, 5, 12, 6];