m = gets.chomp.to_i
k = m / 11
d = m % 11
p = 0

unless d == 0
  if d > 6
    p = 2
  else
    p = 1
  end
end
puts k * 2 + p
