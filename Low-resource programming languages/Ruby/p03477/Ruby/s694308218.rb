A, B, C, D = gets.split.map(&:to_i)
l = A + B
r = C + D
if l > r
  puts 'Left'
elsif l < r
  puts 'Right'
else
  puts 'Balanced'
end
