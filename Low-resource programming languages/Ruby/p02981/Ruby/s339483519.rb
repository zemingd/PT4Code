n, a, b = gets.chomp.split(' ').map(&:to_i)

if a * n < b
  print a * n
else
  print b
end