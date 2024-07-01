a, b, c = gets.split.map(&:to_i)
puts [a, b, c].count(5) == 2 && [a, b, c].count(7) == 1 ? "YES" : "NO"