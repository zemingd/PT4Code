a,b,c,d = gets.chomp.split(" ").map(&:to_i)

if a + b == c + d
  puts 'Balanced'
else
  puts a + b > c + d ? 'Left':'Right'
end