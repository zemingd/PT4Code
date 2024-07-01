X = gets.split(" ").map(&:to_i)
puts (X.uniq.count == 2) ? "YES" : "NO"