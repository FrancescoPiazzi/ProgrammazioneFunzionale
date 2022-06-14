(*data una lista di liste, inserisce a come primo elemento di tutte le liste*)
fun insert(a, nil) = nil
    | insert(a, head::tail) = [a :: head] @ insert(a, tail);

fun powerset(nil) = [nil]
    | powerset(head::tail) = powerset(tail) @ insert(head, powerset(tail));