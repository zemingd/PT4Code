a, b, x = gets.split.map(&:to_i)
puts x.between?(a, a + b) ? "YES" : "NO"
