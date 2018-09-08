-- Data.Charの詳細は↓
-- https://hackage.haskell.org/package/base-4.7.0.0/docs/Data-Char.html
import Data.Char

main = do
    -- ord 文字から文字コードに変換
    print $ ord 'A'
    -- chr 文字コードから文字に変換
    print $ chr 65