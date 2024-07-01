n = gets.to_i
puts ans = (105..n).count { |i| (1..i).count { |j| i % 2 == 1 && i % j == 0 } == 8 }