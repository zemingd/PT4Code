x = gets.to_i
y = 0
z = 100
while (true)
  if z >= x
    puts y
    return
  else
    y += 1
    z = (1.01*z).floor
  end
end