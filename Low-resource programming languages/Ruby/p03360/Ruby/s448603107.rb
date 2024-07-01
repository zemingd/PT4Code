a = gets.split.map &:to_i
sum = a.inject(:+)
sum -= a.max
sum += a.max * (2**gets.to_i)
puts sum