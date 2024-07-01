a, b, c, d = gets.strip.split(' ').map(&:to_i)

ab = a + b
cd = c + d

puts ab == cd ? 'Balanced' : 
  ab > cd ? 'Left' : 'Right'