W, H, x, y, r = gets.split.map(&:to_i)
puts (r <= x and x <= W - r) and (r <= y and Y <= H - r) ? "Yes" : "No"