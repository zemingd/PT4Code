arr = gets.chomp.split(' ').map(&:to_i)
if arr.sum >= 22
  puts "bust"
else
  puts "win"
end