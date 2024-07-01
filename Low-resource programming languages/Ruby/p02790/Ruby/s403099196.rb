a, b = gets.split(' ')
p = a * b.to_i
q = b * a.to_i
puts p <= q ? p : q
