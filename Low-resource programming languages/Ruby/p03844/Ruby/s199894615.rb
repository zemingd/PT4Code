a, op, b = gets.chomp.split(" ").map(&:to_s)
puts op == "+" ? a.to_i + b.to_i : a.to_i - b.to_i