W, H, x, y, r = gets.chomp.split(" ").map(&:to_i)

is_x_in_range = r <= x && x <= W - r
is_y_in_range = r <= y && y <= H - r

if is_x_in_range && is_y_in_range then
  puts "Yes"
else
  puts "No"
end