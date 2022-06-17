fun filter(nil, F) = nil
    | filter(head::tail, F) = 
        if(F(head)) then 
            head::filter(tail, F)
        else 
            filter(tail, F);

fun positive(n) = n>=0;
fun even(n) = if(n=0) then true else if n=1 then false else if n>0 then even(n-2) else even(n+2);

filter([1, ~4, ~1, 7], positive);
filter([1, 4, 1, 7, ~8, ~3], even);