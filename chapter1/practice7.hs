-- 【問7】ROT13(https://ja.wikipedia.org/wiki/ROT13)を実装してください。
import Data.Char

-- Zとa間にアルファベット以外の文字コードが入っててダメだった
-- rot13 char | ord char + 13 > 122 = chr (ord char + 13 - 122 + 64)
-- rot13 char = chr (ord char + 13)

rot13 char
    | 65 <= ord char && ord char <= 77
    || 97 <= ord char && ord char <= 109 = chr (ord char + 13)
    | otherwise = chr (ord char - 13)

toRot13 "" = ""
toRot13 (x:xs) = [rot13 x] ++ toRot13 xs

main = do
    print $ toRot13 "ABC"
    print $ toRot13 "NOP"
    print $ toRot13 "xyz"