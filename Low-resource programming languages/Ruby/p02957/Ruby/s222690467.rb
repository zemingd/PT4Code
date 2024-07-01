x = gets.chomp.split(" ").map(&:to_i).map(&:abs).reduce(&:+) / 2.0
puts (if x == x.to_i "IMPOSSIBLE" else x)