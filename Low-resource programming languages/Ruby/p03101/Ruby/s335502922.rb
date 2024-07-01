h, w = gets.split().map(&:to_i)
x, y = gets.split().map(&:to_i)

puts h*w - (x*w + (y*h-x*y))