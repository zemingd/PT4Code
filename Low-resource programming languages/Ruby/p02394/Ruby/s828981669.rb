w, h, x, y, r = gets.chomp.split.map(&:to_i)
puts 0 <= x-r && x+r <= w && 0 <= y-r && y+r <= h ? "Yes" : "No"
