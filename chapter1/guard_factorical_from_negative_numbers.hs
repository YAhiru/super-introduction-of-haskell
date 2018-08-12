fact = 0
fact n | n > 0 = n * f (n - 1)

main = do
    print $ fact (-1)