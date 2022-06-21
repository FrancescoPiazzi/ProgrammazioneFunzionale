fun contains(a, nil) = false
    | contains(a, head::tail) = if head=a then true else contains(a, tail);

fun noduplen(nil) = 0
    | noduplen(head::tail) = if(contains(head, tail)=false) then 1+noduplen(tail) else noduplen(tail);

noduplen [2, 3, 4, 2, 2, 3, 3];