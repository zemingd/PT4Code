a, b, x = gets.chomp.split.map(&:to_i)

puts a <= x && a + b >= x ? "YES" : "NO"