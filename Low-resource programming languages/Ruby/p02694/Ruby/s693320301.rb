X = gets.to_i
x = 100
i = 0
while x < X
  x = (x * 1.01).to_i
  i += 1
end
puts i
