a,b=gets.split.map &:to_i
c = a+b
puts c%2 == 0 ? c/2 : "IMPOSSIBLE"