fun hist(nil) = (fn (c:real, d:real) => 0)
    | hist(head::tail) = (fn (c:real, d:real) =>
        if head > c-d andalso head < c+d then 
            1+hist(tail) (c, d) 
        else
            hist(tail) (c, d));

hist [0.1, 0.5, 1.0, 3.0, 2.5] (1.0, 0.5);
hist [0.1, 0.5, 1.0, 3.0, 2.5] (1.0, 0.6);