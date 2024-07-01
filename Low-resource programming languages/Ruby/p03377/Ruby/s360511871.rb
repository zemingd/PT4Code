a, b, x = gets.chomp.split.map(&:to_i)
puts (a + b >= x && a <= x) ? "YES" : "NO"
