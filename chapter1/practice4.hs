-- sum, product, take, drop, reverseと同じ機能の関数を再実装してください。
-- 関数名には'を付けてください。

-- lengthの実装例
-- length' []     = 0
-- length' (_:xs) = 1 + length' xs

sum' []     = 0
sum' (x:xs) = x + sum' xs

product' []     = 1
product' (x:xs) = x * product' xs

take' _ []          = []
take' n _ | n < 1   = []
take' n (x:xs)      = [x] ++ take' (n - 1) xs

drop' _ []          = []
drop' n xs | n < 1  = xs
drop' n (_:xs)      = drop' (n - 1) xs

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
    