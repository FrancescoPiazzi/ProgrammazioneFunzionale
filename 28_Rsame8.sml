fun f(nil) = 0
    | f([x]) = x
    | f(head::tail) = head-(f(tail));

f [5, 1];
f [5, 2, 2];
f [5, 2, 2, 4];