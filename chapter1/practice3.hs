-- fibonacciをcase of文法を使って書き換え

fib n = case n of
    0 -> 0
    1 -> 1
    _ | n > 1 -> (fib (n - 2) + fib (n - 1))

main = do
    print $ fib 8