a, b, x = gets.split.map(&:to_i)
if a <= x && x <= a + b
  puts 'Yes'
else
  puts 'No'
end