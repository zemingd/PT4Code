def push(stack, item)
  stack << item
end
def pop(stack)
  item = stack[-1]
  stack.delete_at(-1)
  item
end
stack = []
input = gets.split
input.each do |item|
  case item
  when "+"
    b = pop(stack)
    a = pop(stack)
    push(stack, a+b)
  when "-"
    b = pop(stack)
    a = pop(stack)
    push(stack, a-b)
  when "*"
    b = pop(stack)
    a = pop(stack)
    push(stack, a*b)
  else
    push(stack, item.to_i)
  end
end
puts stack[0]

