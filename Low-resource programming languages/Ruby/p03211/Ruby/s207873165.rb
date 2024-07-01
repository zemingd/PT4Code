s = gets.chomp
puts (0..s.size-3).map{|i| (753 - s[i, 3].to_i).abs }.min
