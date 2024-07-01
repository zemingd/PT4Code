x, a, b = gets.split.map(&:to_i)
d = 0 - a + b
if d <= 0
  puts "delicious"
elsif d <= x
  puts "safe"
else
  puts "dangerous"
end
