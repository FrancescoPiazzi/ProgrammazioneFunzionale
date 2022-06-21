(*15 min*)

fun f(filename) = 
    let
        val file = TextIO.openIn(filename);
        val str = TextIO.inputAll(file);
        val list = explode(str);
        fun even(nil) = []
            | even([head]) = []
            | even(head::next::nil) = [next]
            | even(head::next::tail) = next::even(tail)
    in
        (TextIO.closeIn(file); even(list))
    end;

f("input");