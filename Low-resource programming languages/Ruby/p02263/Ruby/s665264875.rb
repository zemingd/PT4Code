stack = Array.new(1000)
top = 0

s = gets.split
for x in s do
  if x == "+"
    stack[top - 1] = stack[top - 1] + stack[top]
    top -= 1
  elsif x == "-"
    stack[top - 1] = stack[top - 1] - stack[top]
    top -= 1
  elsif x == "*"
    stack[top - 1] = stack[top - 1] * stack[top]
    top -= 1
  else
    stack[top + 1] = x.to_i
    top += 1
  end
end

puts stack[1]

