W, H, x, y, r = gets.split.map(&:to_i)
puts r <= x && x <= W - r && r <= y && y <= H - r ? "Yes" : "No"

