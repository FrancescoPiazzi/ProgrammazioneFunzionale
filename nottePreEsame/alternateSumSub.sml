(*1 min*)
fun f(nil) = 0
    | f(head::tail) = head - f(tail);

f [2, 3];
f [5, 1, 1];
f [5, 1, 1, 2];