A, B, C, D = gets.strip.split.map(&:to_i)

l = A + B
r = C + D

if l.eql?(r)
  puts 'Balanced'
elsif l > r
  puts 'Left'
else
  puts 'Right'
end
