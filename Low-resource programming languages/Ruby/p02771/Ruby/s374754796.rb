X = gets.split(" ").map(&:chomp).map(&:to_i)
puts X.uniq.size == 2 ? "YES" : "NO"