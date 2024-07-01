W, H, x, y, r = gets.split.map(& :to_i)
if W >= x + r && 0 <= x - r && H >= y + r && 0 <= y + r
  puts "Yes"
else
  puts "No"
end