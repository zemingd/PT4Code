a, b, c, d = gets().chomp.split("\s").map{|x| x.to_i}

l = a + b
r = c + d

if l == r
  puts 'Balanced'
elsif l > r
  puts 'Left'
else
  puts 'Right'
end