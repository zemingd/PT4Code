r, g, b = gets.split.map(&:to_i)
ans = 100 * r + 10 * g + b
puts ans % 4 == 0 ? "YES" : "NO"