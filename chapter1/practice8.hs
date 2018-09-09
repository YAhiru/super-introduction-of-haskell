-- 【問8】バブルソート(http://www.ics.kagoshima-u.ac.jp/~fuchida/edu/algorithm/sort-algorithm/bubble-sort.html)
--       を実装してください。

exchange x [] = [x]
exchange x (y:ys)
    | x > y     = y : exchange x ys
    | otherwise = x : exchange y ys

bubblesort [] = []
bubblesort (x:xs) = exchange x $ bubblesort xs

main = do
    print $ bubblesort [5, 2, 9 ,1]