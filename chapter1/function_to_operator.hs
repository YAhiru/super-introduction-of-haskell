add x y = x + y

main = do
    print $ add 1 2
    -- 二つの引数をとる関数を`で囲むことによって中値演算子として使用できる
    print $ 1 `add` 2