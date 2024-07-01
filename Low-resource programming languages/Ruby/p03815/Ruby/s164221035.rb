x = gets.to_i
y = x / 11
z = x % 11
y *= 2
if z == 0
  # NOOP
elsif z <= 6
  y += 1
else
  y += 2
end
puts y