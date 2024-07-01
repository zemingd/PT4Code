toInt :: (String -> Int)
toInt x = read x ::Int

getInts = do
  x <- getLine
  let y = (map$toInt)$words x
  return y

appleToPeace apple = apple * 3

main = do
  xs <- getInts
  let apple = xs !! 0
      peace = xs !! 1
  print ((peace + (appleToPeace apple)) `div` 2)
