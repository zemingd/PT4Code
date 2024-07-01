W, H, x, y = gets.split.map(&:to_i)

cx = W / 2.0
cy = H / 2.0

if cx ==  x && cy == y
  puts "#{W * H / 2.0} 1"
else
  puts "#{W * H / 2.0} 0"
end