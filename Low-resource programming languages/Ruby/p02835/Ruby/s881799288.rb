a, b, c = gets.strip.split.map(&:to_i)
d = a + b + c 
if d >= 22
  puts "bust"
else
  puts "win"
end