pp = gets.to_i
x = 100
y = 0
while true
  x = (x*1.01).to_i
  y += 1
  #x.to_i
  if x >= pp
    break
  end
end
puts y