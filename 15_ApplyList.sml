fun applyListOfFun nil _ = nil
    | applyListOfFun(head::tail) a = head(a)::(applyListOfFun tail a);

applyListOfFun [fn x => x+x, fn x => x*x, fn x => x-(x div 2)] 3;


fun applyListOfNum nil _ = nil
    | applyListOfNum(head::tail) f = f(head)::(applyListOfNum tail f);

applyListOfNum [2, 4, 6] (fn x => x*x);