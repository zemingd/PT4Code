a, b, c  = gets.chomp.split(" ").map(&:to_i)
c >= b / a ? answer = b / a : answer = c
puts answer