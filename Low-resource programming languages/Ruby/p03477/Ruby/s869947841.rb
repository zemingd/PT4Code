a, b, c, d = gets.split.map(&:to_i)
l = a + b
r = c + d
if l == r
  puts 'Balanced'
elsif l > r
  puts 'Left'
else
  puts 'Right'
end
