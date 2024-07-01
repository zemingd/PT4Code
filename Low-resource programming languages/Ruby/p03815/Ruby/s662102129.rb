x = gets.to_i
t = x / 11
if x % 11 < 7
  puts t * 2 + 1
else
  puts t * 2 + 2
end