a,b,c=gets.split.map(&:to_i)
k=gets.to_i

max = [a,b,c].max
rest = [a,b,c] - [max]
p max * 2**k + rest.inject(&:+)
