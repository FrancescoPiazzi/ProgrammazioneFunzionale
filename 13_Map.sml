fun myMap(F, nil) = nil
    | myMap(F, head::tail) = F(head)::myMap(F, tail);

fun replaceNegatives(nil) = nil
    | replaceNegatives(list) = myMap(fn x => if x < 0 then 0 else x, list);

replaceNegatives [2, ~4, ~1, 6]