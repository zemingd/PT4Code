a, op, b = gets().chomp.split("\s")

puts op == '+' ? a.to_i + b.to_i : a.to_i - b.to_i