w, h, x, y = gets.split.map(&:to_i)

a = w * h / 2.0
m = (x == w/2.0 && y == h/2.0) ? 1 : 0
puts "#{a} #{m}"
