w, h, x, y, r = gets.split.map{|i| i.to_i}
puts x.between?(r, w - r) && y.between?(r, h - r) ? "Yes" : "No"