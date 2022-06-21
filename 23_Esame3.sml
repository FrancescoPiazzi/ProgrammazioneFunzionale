datatype intonil = Nil | Int of int;

type ambiente = string -> intonil

val ambientevuoto = fn _:string => Nil;

val lega = fn e:ambiente => fn nome => fn valore => ( fn n => if(n = nome)
    then
        (Int valore)
    else
        (e n)):ambiente;