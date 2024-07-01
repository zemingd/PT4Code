l = gets.to_i

a = l / 3
b = a
c = a

a += l - (a + b + c)

puts a * b * c
