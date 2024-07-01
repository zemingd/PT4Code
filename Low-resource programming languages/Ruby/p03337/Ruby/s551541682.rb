A,B = gets.split.map(&:to_i)
U = Array.new
U[0] = A+B
U[1] = A-B
U[2] = A*B
max = -1000000000
for k in 0..2
 if max < U[k]
  max = U[k]
 end
end
puts(max)