a, b = gets.chomp.split.map(&:to_i)
puts ((a + b) % 2 == 0)? (a - b).abs / 2 : "IMPOSSIBLE"