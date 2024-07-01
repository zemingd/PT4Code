W, H, x, y = gets.split().map(&:to_f)
#中心点
cx, cy = W/2, H/2

b = (cx == x && cy == y) ? 1 : 0
a = (W * H) / 2
puts "#{a} #{b}"