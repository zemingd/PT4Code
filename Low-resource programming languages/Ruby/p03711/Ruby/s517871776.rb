x, y = gets.chomp.split.map(&:to_i)
gx = (x == 2) ? 2 : (([4, 6, 9, 11].include? x) ? 1 : 0)
gy = (y == 2) ? 2 : (([4, 6, 9, 11].include? y) ? 1 : 0)
puts (gx == gy) ? "Yes" : "No"