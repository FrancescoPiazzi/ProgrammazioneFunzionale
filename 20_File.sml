fun printFileByLetter(file) = 
    if TextIO.endOfStream(file) then print("\n") else (print(TextIO.inputN(file, 1)); printFileByLetter(file))

fun printFile(file) = (print(TextIO.input(file)); print("\n"))


val infile = TextIO.openIn("20a_Input");
printFile(infile);
