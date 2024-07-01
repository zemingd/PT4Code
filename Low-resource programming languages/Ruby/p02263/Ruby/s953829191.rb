tokens = gets.split

stack = []

until tokens.empty?
  token = tokens.shift

  case token
  when '+'
    right = stack.pop
    left = stack.pop
    stack.push(left + right)
  when '-'
    right = stack.pop
    left = stack.pop
    stack.push(left - right)
  when '*'
    right = stack.pop
    left = stack.pop
    stack.push(left * right)
  else
    stack.push(token.to_i)
  end
end

puts stack.pop