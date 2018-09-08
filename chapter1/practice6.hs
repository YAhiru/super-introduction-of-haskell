-- 【問6】点 (p,q)(p,q) から直線 ax+by=cに下した垂線の交点を求める関数perpPointを作成してください。
-- aとbが両方ゼロになると解なしですが、チェックせずに無視してください。
-- ヒント: ax+by=cの傾きは −ab−ab です。直交する直線の傾きとの積が −1−1 となることから
-- 垂線は bx−ay=dbx−ay=d と表せます。連立方程式を解けば交点が求まります。

perpPoint (p, q) (a, b, c) = (x, y)
    where
        -- 後ろで定義されてる変数(d)も使えるのか。
        x = (a * c + b * d) / (a * a + b * b)
        y = (b * c - a * d) / (a * a + b * b)
        d = b * p - a * q

main = do
    print $ perpPoint (0, 2) (1, -1, 0)