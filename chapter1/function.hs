f x = x + 1
a = f 1

main = do
    print a

-- printに直接関数の結果を渡す場合は()で囲む
-- main = do
--     print (f 1)

-- $という書き方もある。$から行末まで()で囲むという意味になる
-- main = do
--     print $ f 1