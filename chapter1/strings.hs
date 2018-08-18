-- 文字列は、文字のリストとして扱われるので、リストの文法が使用可能
main = do
    print $ "abcde"
    print $ ['a', 'b', 'c', 'd', 'e']
    print $ ['a'..'e']
    print $ 'a':"bcde"
    print $ 'a':'b':['c'..'e']
    print $ ['a'..'c'] ++ "de"
    print $ "abc" ++ "de"
    print $ "abcde" !! 3

