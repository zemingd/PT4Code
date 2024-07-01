x, a, b = gets.chomp.split.map(&:to_i)
if b <= a
  puts "delicious"
elsif b <= a + x
  puts "safe"
else
  puts "dangerous"
end
