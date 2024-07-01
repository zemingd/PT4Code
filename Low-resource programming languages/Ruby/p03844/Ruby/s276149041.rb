a, op, b = gets.chomp.split(" ").map(&:to_s)
puts op == "+" ? a + b : a - b