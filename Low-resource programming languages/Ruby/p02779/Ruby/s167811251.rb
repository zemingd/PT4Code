n = gets.to_i
a = gets.split.map(&:to_i)
puts (a.uniq.length == n) ? "YES" : "NO"
