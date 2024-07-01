ARGF.each_line do |line|
  a, op, b = line.split
  a = a.to_i
  b = b.to_i
  case op
  when "+"
    answer = a + b
  when "-"
    answer = a - b
  when "*"
    answer = a * b
  when "/"
    answer = a / b
  when "?"
    break
  end
  puts answer
end