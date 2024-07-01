(W,H,x,y,r)=gets.split().map! &:to_i
puts (0 < (r-x) && W > (r+x) && 0 > (r-y) && H < (r+y)) ? "Yes" : "No"