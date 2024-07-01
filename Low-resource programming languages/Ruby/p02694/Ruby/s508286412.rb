x = gets.to_i
i = 0
y = 100
while (y < x)
  i += 1
  y += (y * 0.01).floor
end
puts i