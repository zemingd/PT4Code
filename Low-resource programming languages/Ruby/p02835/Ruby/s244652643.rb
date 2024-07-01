a,b,c = gets.split.map(&:to_i)

if a + b + c <= 21
  puts "win"
else
  puts "bust"
end
