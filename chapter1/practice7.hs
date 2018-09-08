-- 【問7】ROT13(https://ja.wikipedia.org/wiki/ROT13)を実装してください。
import Data.Char

-- Zとa間にアルファベット以外の文字コードが入っててダメだった
-- rot13 char | ord char + 13 > 122 = chr (ord char + 13 - 122 + 64)
-- rot13 char = chr (ord char + 13)

-- アルファベット以外を入力されると変な挙動をするのでダメ
-- rot13 char
--     | 65 <= ord char && ord char <= 77
--     || 97 <= ord char && ord char <= 109 = chr (ord char + 13)
--     | otherwise = chr (ord char - 13)

-- 解答はこれ。
-- わざわざordしなくてもいいのか。そりゃそうだ。
rot13 ch
    |  'A' <= ch && ch <= 'M'
    || 'a' <= ch && ch <= 'm' = chr $ ord ch + 13
    |  'N' <= ch && ch <= 'Z'
    || 'n' <= ch && ch <= 'z' = chr $ ord ch - 13
    | otherwise = ch

toRot13 "" = ""
toRot13 (x:xs) = [rot13 x] ++ toRot13 xs

main = do
    print $ toRot13 "ABC"
    print $ toRot13 "NOP"
    print $ toRot13 "xyz"
    print $ toRot13 "Hello, World"