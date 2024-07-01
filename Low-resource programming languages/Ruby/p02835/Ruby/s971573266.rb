num = gets.chomp.split(" ").map(&:to_i)
sum = num[0] + num[1] + num[2]

if sum >= 22
  puts "bust"
else
  puts "win"
end
