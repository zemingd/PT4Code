X = gets.to_i
Y = gets.to_i
Z = gets.to_i

a = [X]
b = [Y]
c = [Z]

a[0], b[0] = b[0], a[0]
a[0], c[0] = c[0], a[0]

puts a[0],b[0],c[0]