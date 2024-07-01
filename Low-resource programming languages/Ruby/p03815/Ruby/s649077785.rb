x = gets.chomp.to_i
d = x / 11
r = x % 11
if r == 0 then
  puts d * 2
elsif r < 7 then
  puts d * 2 + 1
else
  puts (d + 1) * 2
end