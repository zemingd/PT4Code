x = gets.to_i
y = x % 11
z = (x / 11) * 2

if y <= 6
  z += 1
elsif x <= 11
  z += 2
end

puts z