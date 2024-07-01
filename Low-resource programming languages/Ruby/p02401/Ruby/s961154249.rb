loop do
  a, op, b = gets.split
  a = a.to_i
  b = b.to_i
  if op == "?"
    break
  end
  if op == "+"
    n = a + b
  elsif op == "-"
    n = a - b
  elsif op == "*"
    n = a * b
  elsif op == "/"
    n = a / b
  end
  puts n
end
