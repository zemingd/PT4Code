d, n = gets.split.map(&:to_i)
if d == 0
  puts n
else
  puts (100**d)*n
end