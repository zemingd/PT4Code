w, h, x, y, r = gets.split.map(&:to_i)
max_x = x + r
max_y = y + r

if w > max_x && h > max_y
  puts "Yes"
else
  puts "No"
end