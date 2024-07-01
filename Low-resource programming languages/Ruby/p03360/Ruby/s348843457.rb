a,b,c = gets.split.map &:to_i
k = gets.to_i
puts [a,b,c].max * (2 ** k) + a + b + c - [a,b,c].min