=begin

rectangle width is w
rectangle height is h
circle center is(x,y)
circle radius is r

=end

w, h, x, y, r = gets.split(" ").map(&:to_i)
if x - r >= 0 && 
  y - r >= 0 && 
  x + r <= w &&
  y + r <= h
  puts "Yes"
else
  puts "No"
end
