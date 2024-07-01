a, b = gets.split(' ').map{ |i| i.to_i }
s = a + b
x = s % 2 == 0 ? s / 2 : s / 2 + 1
puts x