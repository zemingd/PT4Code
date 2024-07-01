n = gets.to_i
array = gets.split(" ").map(&:to_i)
result = 0
array.combination(2) {|a, b| result += a * b }
puts result