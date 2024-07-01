flag = true
while flag
  a, op, b = gets.split
  a, b = [a, b].map(&:to_i)
  case op
  when "+"
    puts a + b
  when "-"
    puts a - b
  when "*"
    puts a * b
  when "/"
    puts a / b
  when "?"
    flag = false
  end
end
