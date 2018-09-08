-- 関数で複数の値を返すことができる。括弧で複数の値を囲んだ部分をタプルと呼ぶ。
addsub x y = (x + y, x - y)

main = do
    print a
    print b1
    print b2

    where
        -- 返り値は一度に受けとることも
        a = addsub 1 2
        -- 返り値は複数で受けとることもできる
        (b1, b2) = addsub 1 2