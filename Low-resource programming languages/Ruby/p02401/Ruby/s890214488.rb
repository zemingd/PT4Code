while (true) {
  a, op, b = gets.split
  if op == "?"
    break
  end
a, b = a.to_i, b.to_i
if op == "+"
puts a + b
elsif op == "-"
puts a-b
elsif op == "*"
puts a*b
elsif op == "/"
puts a/b
}