while true
  a, op, b = gets.chomp.split
  a = a.to_i
  b = b.to_i
  break if op == "?"
  case op
  when "+"
    puts a + b
  when "-"
    puts a - b
  when "*"
    puts a * b
  when "/"
    puts a / b
  end
end