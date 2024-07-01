n,a,b = gets.split(' ').map(&:to_i)

if (n * a) >= b
  puts b
else
  puts n * a
end
