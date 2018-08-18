-- fibonacciをguard文法を使って書き換え

fib n
    | n == 0    = 0
    | n == 1    = 1
    | otherwise = (fib (n - 2) + fib (n - 1))

main = do
    print $ fib 8