n = gets.to_i
sum = [*1...n].inject(:+)
sum = 0 if n == 1

puts sum
