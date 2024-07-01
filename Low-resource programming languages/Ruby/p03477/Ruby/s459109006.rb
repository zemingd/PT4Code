a, b, c, d = gets.chomp.split.map(&:to_i)
puts(["Balanced", "Left", "Right"][a + b <=> c + d])