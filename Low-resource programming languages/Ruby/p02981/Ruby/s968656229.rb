n, a, b = gets.split.map(&:to_i)
if b < a*n
  puts b
else
  puts a*n
end