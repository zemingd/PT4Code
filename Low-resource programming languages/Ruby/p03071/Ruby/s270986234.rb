a, b = gets.chomp.split(" ").map(&:to_i)
if a == b
  puts a+b
else
  max = a > b ? a : b
  puts (max + max - 1)
end
