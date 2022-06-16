(*data una lista di liste, inserisce a come primo elemento di tutte le liste e ritorna il risultato*)
fun insert(a, nil) = nil
    | insert(a, head::tail) = [a::head] @ insert(a, tail);

(*dato un insieme, ritorna l'insieme potenza*)
fun powerset(nil) = [nil]
    | powerset(head::tail) = powerset(tail) @ insert(head, powerset(tail));