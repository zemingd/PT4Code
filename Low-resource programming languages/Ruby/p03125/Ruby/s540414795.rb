a, b = gets.chomp.split(" ").map(&:to_i)

b / a == 0 ? answer = a + b : answer = b - a

puts answer
