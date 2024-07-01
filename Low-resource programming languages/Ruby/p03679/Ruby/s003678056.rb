x, a, b = gets.split.map(&:to_i)
if a > b
  puts "delicious"
elsif a < b && x + 1 > (b - a)
  puts "safe"
else
  puts "dangerous"
end