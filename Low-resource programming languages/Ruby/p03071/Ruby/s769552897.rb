a,b=gets.split.map(&:to_i)
s=[a,b,a-1,b-1].sort
p s[2]+s[3]