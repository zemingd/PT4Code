a,b=gets.split.map(&:to_i)
m=(a+b)/2
if 2*m == a+b
  puts m
else
  puts 'IMPOSSIBLE"'
end