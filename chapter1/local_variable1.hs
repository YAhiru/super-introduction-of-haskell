-- pattern 1
main = do
    print c
    where
        a = 1
        b = 2
        c = a + b

-- whereは使用箇所の下で定義しないと使えないっぽい。変な書き方。