n, a, b = gets.chomp.split(' ').map(&:to_i)

if(n * a > b)
  puts b
else
  puts n * a
end