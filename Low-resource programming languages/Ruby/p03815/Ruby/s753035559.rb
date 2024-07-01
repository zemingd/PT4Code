x = gets.chomp.to_i
d = x / 11
r = x % 11
if r < 7 then
  puts d * 2 + 1
else
  puts d * 2 + 2
end
