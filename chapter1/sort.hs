insert x [] = [x]
insert x (y:ys)
    | x < y = x:y:ys
    | otherwise = y : insert x ys

isort [] = []
isort (x:xs) = insert x (isort xs)

main = do
    print $ isort [4, 6, 9, 8, 3, 5, 1, 7, 2]

-- リスト[4, 6, 9, 8, 3, 5, 1, 7, 2]の往路をトレースします。

-- isort [4, 6, 9, 8, 3, 5, 1, 7, 2] = insert 4 (isort [6, 9, 8, 3, 5, 1, 7, 2])
-- isort [6, 9, 8, 3, 5, 1, 7, 2] = insert 6 (isort [9, 8, 3, 5, 1, 7, 2])
-- isort [9, 8, 3, 5, 1, 7, 2] = insert 9 (isort [8, 3, 5, 1, 7, 2])
-- isort [8, 3, 5, 1, 7, 2] = insert 8 (isort [3, 5, 1, 7, 2])
-- isort [3, 5, 1, 7, 2] = insert 3 (isort [5, 1, 7, 2])
-- isort [5, 1, 7, 2] = insert 5 (isort [1, 7, 2])
-- isort [1, 7, 2] = insert 1 (isort [7, 2])
-- isort [7, 2] = insert 7 (isort [2])
-- isort [2] = insert 2 (isort [])
-- isort [] = []

-- 復路をトレースします。

-- isort [2] = insert 2 []
-- isort [7, 2] = insert 7 [2]
-- isort [1, 7, 2] = insert 1 [2, 7]
-- isort [5, 1, 7, 2] = insert 5 [1, 2, 7]
-- isort [3, 5, 1, 7, 2] = insert 3 [1, 2, 5, 7]
-- isort [8, 3, 5, 1, 7, 2] = insert 8 [1, 2, 3, 5, 7]
-- isort [9, 8, 3, 5, 1, 7, 2] = insert 9 [1, 2, 3, 5, 7, 8]
-- isort [6, 9, 8, 3, 5, 1, 7, 2] = insert 6 [1, 2, 3, 5, 7, 8, 9]
-- isort [4, 6, 9, 8, 3, 5, 1, 7, 2] = insert 4 [1, 2, 3, 5, 6, 7, 8, 9]
-- [1, 2, 3, 4, 5, 6, 7, 8, 9]