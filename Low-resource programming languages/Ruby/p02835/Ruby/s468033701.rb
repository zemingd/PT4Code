x = gets.split.map(&:to_i)

if x[0] + x[1] + x[2] > 21
  puts "bust"
else
  puts "win"
end
