n = gets.to_i
input = gets.split.map(&:to_i)

input.sort!
puts input[n / 2] - input[n / 2 - 1]
