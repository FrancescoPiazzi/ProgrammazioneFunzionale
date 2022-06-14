fun reverse(nil) = nil
    | reverse(head::tail) = reverse(tail) @ [head]
