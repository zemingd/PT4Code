w, h, x, y = gets.split.map(&:to_f)
puts "#{w * h / 2} #{(x == w / 2 && y == h / 2) ? 1 : 0}"