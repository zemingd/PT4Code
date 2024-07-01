x = gets.to_i
q = x/11
r = x%11
if r > 6
  puts 2*q + 2
else
  puts 2*q + 1
end