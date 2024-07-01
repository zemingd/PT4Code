n, a, b = gets.chomp.split(' ').map{|i| i.to_i }

d = n * a
if d < b
  puts d
else
  puts b
end
