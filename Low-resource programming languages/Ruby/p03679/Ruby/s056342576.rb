x,a,b = gets.strip.split.map(&:to_i)
y = b-a
if x < y
  puts "dangerous"
elsif a < b
  puts "safe"
else
  puts "delicious"
end