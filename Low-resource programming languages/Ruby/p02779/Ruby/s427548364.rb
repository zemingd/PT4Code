N = gets.to_i
A = gets.split.map(&:to_i)
puts A.uniq.size == N ? "YES" : "NO"