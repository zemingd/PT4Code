m = gets.chomp.to_i
k = m / 11

if m % 11 > 5
  p = 2
else
  p = 1
end
puts k * 2 + p
