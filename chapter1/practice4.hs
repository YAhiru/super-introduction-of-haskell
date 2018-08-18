-- sum, product, take, drop, reverseと同じ機能の関数を再実装してください。
-- 関数名には'を付けてください。

-- lengthの実装例
-- length' []     = 0
-- length' (_:xs) = 1 + length' xs

sum' []     = 0
sum' (x:xs) = x + sum' xs

product' []     = 1
product' (x:xs) = x * product' xs

-- take' 0 _       = []
-- take' _ []      = []
-- take' n (x:xs)  = [x] ++ take' (n - 1) xs

-- パターンマッチよりガードの方が１回分再帰が減って良さそう？
take' n (x:xs)
    | n  == 0   = []
    | xs == []  = [x]
    | otherwise = [x] ++ take' (n - 1) xs

-- とはいえパターンマッチの方がわかりやすい感じがしていいかもしれない
drop' 0 xs = xs
drop' _ [] = []
drop' n (_:xs) = drop' (n - 1) xs

reverse' []     = []
reverse' (x:xs) = reverse' xs ++ [x]


main = do
    print $ "sum"
    print $ sum' list

    print $ "product"
    print $ product' list

    print $ "take"
    print $ take' 2 list

    print $ "drop"
    print $ drop' 2 list

    print $ "reverse"
    print $ reverse' list

    where
        list = [1..5]
    