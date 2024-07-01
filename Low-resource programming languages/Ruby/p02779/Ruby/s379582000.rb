n = gets.to_i
puts n == gets.split.map(&:to_i).uniq.size ? "YES" : "NO"