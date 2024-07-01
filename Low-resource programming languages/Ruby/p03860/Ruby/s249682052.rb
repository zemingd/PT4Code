a, b, x = gets.chomp.split.map(&:to_i)
puts ((b-a) / x) + (a / x > 0 || a == 0 ? 1 : 0)
