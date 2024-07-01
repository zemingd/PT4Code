input = gets.split

def reverse_porland(input)
  stack = []
  input.each do |i|
    if i == '+' || i == '-' || i == '*'
      a = stack.pop
      b = stack.pop
      c = b.send(i.to_sym, a)
      stack.push(c)
    else
      stack.push(i.to_i)
    end
  end
  return stack[0]
end

ans = reverse_porland(input)
puts ans
