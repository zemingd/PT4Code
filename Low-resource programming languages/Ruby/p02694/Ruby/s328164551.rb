X = gets.to_i
i = 0
k = 100
while k < X do
  k += (k/100).floor
  i += 1
end
puts i