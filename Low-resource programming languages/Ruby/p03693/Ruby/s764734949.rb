a, b, c = gets.split.map(&:to_i)
puts (a * 100 + b * 10 + c) % 4 == 0 ? "YES" : "NO" 