tokens = gets.split

stack = []

until tokens.empty?
  token = tokens.shift

  case token
  when '+'
    a = stack.pop
    b = stack.pop
    stack.push(a + b)
  when '-'
    b = stack.pop
    a = stack.pop
    stack.push(a - b)
  when '*'
    a = stack.pop
    b = stack.pop
    stack.push(a * b)
  else
    stack.push(token.to_i)
  end
end

puts stack.pop