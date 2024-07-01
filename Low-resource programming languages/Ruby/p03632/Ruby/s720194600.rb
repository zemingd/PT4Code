a,b,c,d=gets.split.map &:to_i
e=(a..b).to_a&(c..d).to_a
puts (e.size-1)>0 ?  (e.size-1): 0