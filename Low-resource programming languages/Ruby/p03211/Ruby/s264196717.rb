s = gets.chomp.chars

p s.each_cons(3).map { |digits| (digits.join.to_i - 753).abs }.min
