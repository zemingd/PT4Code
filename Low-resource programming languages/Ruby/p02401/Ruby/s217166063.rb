loop do
  a, op, b = gets.split
  a = a.to_i
  b = b.to_i
  case op
  when ?+
    p a + b
  when ?-
    p a - b
  when ?*
    p a * b
  when ?/
    p a / b
  else
    break
  end
end