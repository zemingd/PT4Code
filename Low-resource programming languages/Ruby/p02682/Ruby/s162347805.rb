a, b, c, k=gets.split.map &:to_i
d=[k, a+b].min
k-=d
puts a-k
