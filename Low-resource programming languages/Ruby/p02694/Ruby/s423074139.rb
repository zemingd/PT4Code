X = gets.to_i

g = 100
y = 0
while g <= X
  g = (g * 1.01).floor
  y += 1
  if g >= X
    puts y
  end
end