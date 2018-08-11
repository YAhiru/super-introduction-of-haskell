a = 1
f a = if a == 1 then "1" else "?"

main = do
    -- 1行で書くなら
    if a == 1 then print "1" else print "?"

    -- 複数行で書く場合は、thenやelseはインデントするのがマナーっぽい
    -- 実際はインデントしなくても動く
    if a == 1
        then print "1"
        else print "?"
    
    -- ifは値を返すので、三項演算子のような書き方もできる
    print $ if a == 1 then "1" else "?"

    -- 関数と組み合わせた例
    print $ f 0
    print $ f 1