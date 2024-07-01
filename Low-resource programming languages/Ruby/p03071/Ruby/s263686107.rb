a, b = gets.split.map(&:to_i)
if a > b
  puts 2 * a - 1
elsif a < b
  puts 2 * b - 1
else
  puts a + b
end