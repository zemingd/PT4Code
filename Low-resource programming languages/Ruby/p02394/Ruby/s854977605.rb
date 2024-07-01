w, h, x, y, r = gets.chomp.split.map(&:to_i)

if x < 0 || y < 0
  puts "No"
elsif x + r == 0 || y + r == 0
  puts "No"
elsif x + r > w || y + r > h
  puts "No"
else
  puts "Yes"
end

