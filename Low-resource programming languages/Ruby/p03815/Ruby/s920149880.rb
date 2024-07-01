x = gets.to_i
t = x / 11
m = x % 11
if m == 0
  puts t * 2
elsif m < 7
  puts t * 2 + 1
else
  puts t * 2 + 2
end