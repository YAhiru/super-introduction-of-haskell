main = do
    -- リストの要素数を取得
    print "length"
    print $ length list

    -- リストの総和を取得
    print "sum"
    print $ sum list

    -- sumの掛け算版
    print "product"
    print $ product list

    -- リストから先頭のn個目の要素を取得
    print "take"
    print $ take 2 list

    -- リストから先頭のn個を無くしたリストを返却
    print "drop"
    print $ drop 2 list

    -- リストの要素を逆順に並び替える
    print "reverse"
    print $ reverse list

    where
        list = [1..5]
