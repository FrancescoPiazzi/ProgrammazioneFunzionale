(*nana, banana*)
(*ban, banana*)

fun subString(str1, str2) = 
    let
        val size1 = length(explode(str1))
        val size2 = length(explode(str2))
    in
        if size2 < size1 then false
        else if str1 = substring(str2, 0, size1) then true
        else subString(str1, implode(tl(explode(str2))))
    end;

subString("anana", "banana");
subString("ban", "banana");
subString("hehe", "banana");