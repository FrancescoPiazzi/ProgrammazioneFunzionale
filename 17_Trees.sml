datatype 'treeType tree = 
    Empty
    | Node of 'treeType * 'treeType tree * 'treeType tree;

datatype 
    'treeType evenTree = 
        Empty
        | Node of 'treeType * 'treeType oddTree * 'treeType oddTree;
and 
    'treeType oddTree = 
        Empty
        | Node of 'treeType * 'treeType evenTree * 'treeType evenTree;