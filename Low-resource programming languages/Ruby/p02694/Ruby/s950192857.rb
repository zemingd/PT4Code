a = 100
k = gets.to_i
i = 0
while a < k
  i += 1
  a = a * 1.01
  a = a.floor
end
puts i
