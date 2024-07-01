while line = gets
  a, op, b = line.split
  a, b = a.to_i, b.to_i

  case op
  when '+'
    puts a + b
  when '-'
    puts a - b
  when '*'
    puts a * b
  when '/'
    puts a / b
  when '?'
    break
  end
end