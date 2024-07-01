a, b = gets.chomp.split(" ").map(&:to_i)

b >= a ? answer = a : answer = a - 1

puts answer