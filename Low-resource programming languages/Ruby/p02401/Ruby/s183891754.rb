loop {
  a, op, b = gets.split(" ").map(&:to_s)
  a = a.to_i
  b = b.to_i

  op == '?' && break

  case op
  when '+'
    puts a + b
  when '-'
    puts a - b
  when '*'
    puts a * b
  when '/'
    puts a / b
  end
}