w, h, x, y, r = gets.chomp.split.map(&:to_i)
if x + r <= w && x - r >= 0 && y + r <= h && y - r >= 0
  puts "Yes"
else
  puts "No"
end