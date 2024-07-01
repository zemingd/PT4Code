main = do n <- readLn
          let ns = [1..n]
          putStrLn . (" " ++) . unwords . map show $ filter solve ns

solve :: Int -> Bool
solve n | n `mod` 3 == 0 = True
        | n `mod` 10 == 3 = True
        | otherwise = False