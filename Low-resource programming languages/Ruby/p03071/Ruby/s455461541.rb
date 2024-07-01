a,b = gets.split.map(&:to_i)
if a > b
  puts (a + (a - 1))
elsif a < b
  puts (b + (b - 1))
else
  puts (a + b)
end