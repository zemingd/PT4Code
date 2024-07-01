w, h, x, y = gets.split.map(&:to_i)
flag = (x == w / 2) && (y == h / 2) ? 1 : 0
puts "#{w * h / 2 - 0.000000001} #{flag}"