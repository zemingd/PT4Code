a, b, c  = gets.chomp.split(" ").map(&:to_i)
c >= b / a ? answer = a / b : answer = c
puts answer