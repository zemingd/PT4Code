s = gets.chomp
puts (0..s.length-3).map{ |i| (753 - s[i..i+2].to_i).abs }.min