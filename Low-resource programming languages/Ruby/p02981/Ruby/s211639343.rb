n,a,b = gets.chomp.split(' ').map(&:to_i)
if n*a < b
  puts n*a
else
  puts b
end