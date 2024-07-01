a, b, c = gets.split.map(&:to_i)
sum = a + b + c
if sum > 21
  puts "bust"
else
  puts "win"
end