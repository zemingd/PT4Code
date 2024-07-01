w, h, x, y, r = STDIN.gets.chomp.split(' ').map(&:to_i)
if (0 <= x - r) && (x + r <= w) && (0 <= y - r) && (y + r <= h)
  puts "Yes"
else
  puts "No"
end