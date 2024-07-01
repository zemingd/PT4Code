w, h, x, y, r = gets.split(" ").map(&:to_i)

is_contains = x + r <= w and x - r >= 0 and y + r <= h and y - r > 0
puts is_contains ? "Yes" : "No"