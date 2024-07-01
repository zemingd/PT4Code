a, b, c, d = gets.split.map(&:to_i)
if a + b - (c + d) == 0
  puts 'Balanced'
elsif a + b - (c + d) > 0
  puts 'Left'
else
  puts 'Right'
end