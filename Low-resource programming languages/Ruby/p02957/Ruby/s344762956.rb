x = gets.chomp.split(" ").map(&:to_i).map(&:abs).reduce(&:+) / 2.0
puts (x == x.to_i ? "IMPOSSIBLE" : x)