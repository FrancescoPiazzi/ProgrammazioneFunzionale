(fn x=>x*2+1)3;

val n=5;
val perTre = fn n => n*3;
fun perQuattro(n) = n*4;

if n>3 then perTre n else perQuattro n;

fun fact n = if n=0 then 1 else n*fact(n-1);
fact(5);


val derivata = fn(f, x) => (f(x) - f(x-0.001)) / 0.001;
val g = fn x => x^2;

derivata(g, 4);
