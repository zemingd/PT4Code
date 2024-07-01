x,a,b = gets.split(" ").map(&:to_i)

c = b - a
if c <= 0
  puts "delicious" 
elsif c <= x
  puts "safe"
else
  puts "dangerous"
end