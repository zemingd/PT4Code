a, b, c = gets.split.map &:to_i

puts [a * 10 + b + c, a + b * 10 + c].max
