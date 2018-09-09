-- traceを使うと途中経過を表示できる
-- trace 表示する文字列 戻り値

import Debug.Trace

test x = trace ("test" ++ show x) x

main = do
    traceIO $ show $ test 5