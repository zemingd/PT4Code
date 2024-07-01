while line = gets do
  return if line =~ /\?/
  a, op, b = line.sprit
  a = a.to_i
  b = b.to_i
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