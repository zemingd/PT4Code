n = gets
a, b = n.chomp.split
a, b = a.to_i, b.to_i

sum = a + b
i = 0
while sum > 0
   sum /= 10
   i += 1
end
  
puts i   