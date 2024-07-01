n = gets.to_i
aNUniqNumbers=(gets.split.map(&:to_i)).uniq.size
puts n == aNUniqNumbers ? "YES" : "NO"