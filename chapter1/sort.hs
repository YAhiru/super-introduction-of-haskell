insert x [] = [x]
insert x (y:ys)
    | x < y = x:y:ys
    | otherwise = y : insert x ys

isort [] = []
isort (x:xs) = insert x (isort xs)

main = do
    print $ isort [3, 5, 1, 2, 7, 4, 6]