-- pattern 2
main = do
    let a = 1
        b = 2
        c = a + b
    print c

-- doが無い場合は最後にinをつける必要がある
-- main = 
--     let a = 1
--         b = 2
--         c = a + b in
--     print c