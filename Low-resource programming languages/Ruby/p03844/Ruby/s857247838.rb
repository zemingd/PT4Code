A, op, B = gets.chomp.split
a, b = [A, B].map(&:to_i)
puts op == '+' ? a + b : a - b
