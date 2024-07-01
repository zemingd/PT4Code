while line = gets do
  a, op, b = line.split
  case op
  when "+"
    puts a + b
  when "-"
    puts a - b
  when "*"
    puts a * b
  when "/"
    puts ( a / b ).floor
  when "?"
    break
end