-- productを使ってfact（階乗）を実装してください。

fact n | 0 < n = product [1..n]

main = do
    print $ fact 5