while line = gets
  a, b = line.chomp.split
  p a, b
  a, b = a.to_i, b.to_i
  p a, b
end
sum = a + b
i = 0
while sum > 0
   sum /= 10
   i += 1
end
  
puts i   