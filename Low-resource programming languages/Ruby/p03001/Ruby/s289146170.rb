w, h, x, y = gets.split.map(&:to_i)
m = (x == w / 2.0 && y == h / 2.0) ? 1 : 0
ans = w * h / 2.0
puts "#{ans} #{m}"
