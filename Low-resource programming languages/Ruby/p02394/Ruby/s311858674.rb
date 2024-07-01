W, H, x, y, r = gets.chop.split(' ').map(&:to_i)

if (x-r) < 0
  puts "No"
elsif (x+r) > W
  puts "No"
elsif (y-r) < 0
  puts "No"
elsif (y+r) > H
  puts "No"
else
  puts "Yes"
end

