(*4 min*)

fun f(filename) = let
    val file = TextIO.openIn(filename);
    val list = explode(TextIO.inputAll(file));

    fun evenChar nil = []
        | evenChar([_]) = []
        | evenChar(head::next::tail) = next::evenChar(tail)
in
    (TextIO.closeIn(file); evenChar(list))
end;

f("input");