exception EmptyList

fun reduce(nil, F) = raise EmptyList
    | reduce([x], F) = x
    | reduce(head::tail, F) = F(head, reduce(tail, F));

fun leftReduce(nil, F) = raise EmptyList
    | leftReduce([x], F) = x
    | leftReduce(head::second::tail, F) = leftReduce(F(head, second)::tail, F);

(* the result type of F must be the same as the type of the parameters,
    this allows to compute F(F(l[0], l[1]), l[2])*)
fun mul(a, b) = a*b;
fun max(a, b) = if a>b then a else b;
fun min(a:real, b:real) = if a<b then a else b;

reduce([2, 5, 3, 2], mul);
reduce([2.0, 4.0, 6.0, 1.0], min);
reduce([1, 2, 1], op +);

reduce([5, 1, 2, 3], op -);
leftReduce([5, 1, 2, 3], op -);