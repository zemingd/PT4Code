a, b, x = gets.strip.split.map(&:to_i)
puts x >= a && (a + b) >= x ? "YES" : "NO"