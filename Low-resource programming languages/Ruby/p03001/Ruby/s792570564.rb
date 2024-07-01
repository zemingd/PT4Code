w, h, x, y = gets.split.map(&:to_i)
if x == w/2.0 and y == h/2.0
if w/2.0 == x and h/2.0 == x
  ans = 1
else
  ans = 0
end
calc = w*h/2.0
puts "#{calc} #{ans}"