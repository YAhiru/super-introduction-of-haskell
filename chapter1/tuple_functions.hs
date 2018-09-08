main = do
    -- 要素が2つのタプルから値を取り出す関数
    let p2 = (1, 2)
    print $ fst p2
    print $ snd p2
    -- 要素が3つ以上のタプルからは変数経由で値を取り出す
    let p3 = (1, 2, 3)
    print p3
    let (_, _, p3z) = p3
    print p3z
    -- リストのように!!で取り出すことはできない