a, b = gets.chomp.split.map(&:to_s)
c = a + b
d = c.to_f
if d ** 0.5 % 1 == 0
  puts "Yes"
else
  puts "No"
end
