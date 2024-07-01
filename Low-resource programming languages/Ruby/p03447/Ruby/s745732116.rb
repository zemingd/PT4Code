x = gets.chomp.to_i
a = gets.chomp.to_i
b = gets.chomp.to_i

x -= a
x -= (x/b) * b

puts x