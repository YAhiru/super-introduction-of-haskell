-- xに引数のリストの先頭の値が渡され、xsに残りのリストが渡される
-- first (x:xs) = x

-- 今回の例だとxsは使っていないので
-- 使っていないことを明示的に宣言する_を使用するのが好ましい
first (x:_) = x

-- また、先頭要素は複数連ねることも可能
second (_:x:_) = x

main = do
    print $ first list
    print $ first strings

    print $ second list
    print $ second strings

    where
        list = [1..5]
        strings = "abcde"