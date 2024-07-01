x, a, b = gets.chomp.split.map(&:to_i)
if b > a + x
  puts "dangerous"
elsif b > a
  puts "safe"
else
  puts "delicious"
end