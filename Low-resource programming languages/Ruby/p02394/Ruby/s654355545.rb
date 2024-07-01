W, H, x, y, r = gets.split(" ").map {|x| x.to_i}
puts 0 <= x - r && x + r <= W && 0 <= y - r && y + r <= H ? "Yes" : "No"