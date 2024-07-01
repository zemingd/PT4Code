a,b,c,d = gets.chomp.split(' ').map(&:to_i)
l = a+b
r = c+d
if (l > r)
  puts 'Left'
elsif(l == r)
  puts 'Balanced'
else
  puts 'Right'
end