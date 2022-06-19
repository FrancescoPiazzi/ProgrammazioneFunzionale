signature Queue = sig
    type 'a queue = 'a list
    val create: 'a queue
    val push: 'a * 'a queue -> 'a queue
    val pop: 'a queue -> 'a * 'a queue
end

structure Queue = struct
    exception EmptyQueue;
    type 'a queue = 'a list;
    val create = [];
    fun push(x, q) = q@[x];
    fun pop(nil) = raise EmptyQueue | pop(q::qs) = (q, qs);
    fun isEmpty(nil) = true | isEmpty(_) = false;
end;

val q = Queue.push(12, Queue.push(54, Queue.push(27, Queue.create)));
Queue.pop(q);