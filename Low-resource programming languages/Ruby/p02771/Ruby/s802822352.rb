X = gets.split(" ").map(&:to_i)
puts X.uniq.size == 2 ? "YES" : "NO"