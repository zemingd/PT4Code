x, a, b = gets.split.map(&:to_i)
t = b - a
if t <= 0
  puts "delicious"
elsif t <= x
  puts "safe"
else
  puts "dangerous"
end