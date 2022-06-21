val input = TextIO.openIn("29a_Input")
fun f(file) = if TextIO.endOfStream(file) then [TextIO.inputN(file, 2)] else
    let
        val trash = TextIO.inputN(file, 2)
        val keep = TextIO.inputN(file, 2)
    in
        keep::f(file)
    end;

f(input)