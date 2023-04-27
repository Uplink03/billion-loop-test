billion = 1000 * 1000 * 1000
divisor = 100 * 1000 * 1000

loop :: Int -> IO ()
loop i
    | i `mod` divisor == 0 = do
    print j
    loop $ i + 1
    | i < billion = loop $ i + 1
    | otherwise = return ()
    where j = fromIntegral i / 9.0

main = loop 0
