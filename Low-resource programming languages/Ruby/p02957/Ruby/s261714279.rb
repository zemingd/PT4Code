a, b = gets.split.map(&:to_i)
k2 = a + b
puts (k2 % 2 == 0) ? (k2 / 2) : "IMPOSSIBLE"
