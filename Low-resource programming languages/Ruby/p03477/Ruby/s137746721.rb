a, b, c, d = gets.split.map(&:to_i)
left = a + b
right = c + d
puts left == right ? "Balanced" : left > right ? "Left" : "Light"