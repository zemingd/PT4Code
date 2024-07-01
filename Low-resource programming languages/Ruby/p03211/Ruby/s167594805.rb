s = gets.chomp
puts (0..s.size-3).to_a.map { |i| (s[i..i+2].to_i - 753).abs }.min
