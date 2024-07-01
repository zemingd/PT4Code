a, b = gets.chomp.split(" ").map(&:to_i)
x = a * b

if x % 2 == 0
  puts "Odd"
else
  puts "Even"
end