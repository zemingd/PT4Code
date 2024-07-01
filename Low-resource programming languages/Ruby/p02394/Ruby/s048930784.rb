W, H, x, y, r = gets.split.map(&:to_i)
if x - r >= 0 && r + y <= H && x + r <= W && y - r >= 0
  puts "Yes"
else
  puts "No"
end

