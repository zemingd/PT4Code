W, H, x, y, r= gets.chomp.split(" ").map(&:to_i)

if (x + r) > W || (x - r) < 0
  puts "No"
elsif (y + r) > H || (y - r) < 0
  puts "No"
else
  puts "Yes"
end
