a,b,c,d=gets.split.map(&:to_i)
p ([*a..b]&[*c..d]).size-1
