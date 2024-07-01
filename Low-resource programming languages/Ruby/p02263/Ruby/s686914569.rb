tokens = gets.split

stack = []

until tokens.empty?
  token = tokens.shift

  case token
  when '+'
    a = stack.shift
    b = stack.shift
    stack.unshift(a + b)
  when '-'
    b = stack.shift
    a = stack.shift
    stack.unshift(a - b)
  when '*'
    a = stack.shift
    b = stack.shift
    stack.unshift(a * b)
  else
    stack.unshift(token.to_i)
  end
end

puts stack.shift