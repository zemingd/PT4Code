a,b,c=gets.split.map(&:to_i)
i=gets.to_i
m=[a,b,c].sort
p m[2]*2**i+m[1]+m[0]