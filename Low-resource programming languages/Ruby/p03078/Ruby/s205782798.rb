import Data.List

main = do
  [x,y,z,k] <- readWordsLn
  as <- readWordsLn
  bs <- readWordsLn
  cs <- readWordsLn
  putStr $ solve x y z k as bs cs

solve x y z k as' bs' cs' = unlines.map show$take k ans
  where
  ans = sortBy (flip compare)
    [ as!!(a-1) + bs!!(b-1) + cs!!(c-1)
    | a <- [1..min k x]
    , b <- [1..min (div k a) y]
    , c <- [1..min (div k (a*b)) z] ]
  [as,bs,cs] = map (sortBy $ flip compare) [as',bs',cs']

readWordsLn = map read.words<$>getLine