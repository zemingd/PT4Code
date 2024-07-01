a, b = gets.strip.split.map(&:to_i)
s = a * b
if s % 2 == 0
  puts "Even"
else
  puts "Odd"
end
