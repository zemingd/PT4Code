s = gets.chars

p s.each_cons(3).map { |d| (d.join.to_i - 753).abs }.min
