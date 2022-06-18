datatype 'a option = NONE | SOME of 'a

signature Stack =
sig
    val empty: 'a list
    val pop: 'a list -> 'a option
    val push: 'a * 'a list -> 'a list
    eqtype 'a stack
end;

structure Stack = 
struct
    type 'a stack = 'a list
    val empty = []
    val push = op::
    fun pop [] = NONE
        | pop (head::tail) = SOME head
end:> Stack;

Stack.push(3, [1, 2]);
Stack.pop([4, 2, 3]);
Stack.pop([]);