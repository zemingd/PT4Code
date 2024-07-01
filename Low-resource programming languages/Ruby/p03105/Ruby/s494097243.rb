a,b,c = gets.split.map(&:to_i)
sum = b/a
if sum >= c
  puts c
else
  puts sum
end