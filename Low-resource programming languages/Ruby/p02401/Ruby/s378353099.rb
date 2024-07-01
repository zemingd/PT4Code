loop do
a, op, b = gets.split
a = a.to_i
b = b.to_i
  if op == '?'
    break
  elsif op == "+"
    puts a + b
  elsif op == "-"
    puts a - b
  elsif op == "*"
    puts a * b
  elsif op == "/"
    puts a / b
  end
end

