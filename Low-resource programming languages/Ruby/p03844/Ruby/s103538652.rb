a, op, b = gets.chomp.split
a = a.to_i
b = b.to_i
puts (op == "+") ? a + b : a - b