datatype 'a option = NONE | SOME of 'a

signature Stack = sig
    val create: 'a list
    val pop: 'a list -> 'a option
    val push: 'a * 'a list -> 'a list
    eqtype 'a stack
end

structure Stack = struct
    type 'a stack = 'a list
    val create = []
    val push = op::
    fun pop [] = NONE
        | pop (head::tail) = SOME head
end:> Stack;

val s = Stack.push(12, Stack.push(54, Stack.push(27, Stack.create)));
Stack.pop(s);