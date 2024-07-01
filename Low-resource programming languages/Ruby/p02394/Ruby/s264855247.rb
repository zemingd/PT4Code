W, H, x, y, r = gets.split.map(&:to_i)
xmin = x - r
xmax = x + r
ymin = y - r
ymax = y + r
if xmin >= 0 && xmax <= W && ymin >= 0 && ymax <= H then
puts "Yes"
else
puts "No"
end