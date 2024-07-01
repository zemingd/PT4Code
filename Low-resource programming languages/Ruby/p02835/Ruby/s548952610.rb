a = gets.split.map(&:to_i)
if a.sum <= 21
  puts "win"
else
  puts "bust"
end