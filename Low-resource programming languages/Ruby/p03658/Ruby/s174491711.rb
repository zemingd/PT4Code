a, b = gets.split.map(&:to_i)
p gets.chomp.split(" ").map(&:to_i).sort[-b..-1].inject(&:+)