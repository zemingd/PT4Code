w, h, x, y = gets.split.map(&:to_i)
if 2 * x == w && 2 * y == h
  puts "#{w * h / 2.0} 1"
else
  puts "#{w * h / 2.0} 0"
end