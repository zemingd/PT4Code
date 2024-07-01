w, h, x, y, r = gets.split(" ").map(&:to_i)
puts (x + r > w) || (y + r > h) ? "No" : "Yes"