arr = gets.chomp.split
stack = []
for i in 0..arr.length-1 do
  s = arr[i]
  if s == "+"
    s = stack.pop + stack.pop
  elsif s == "-"
    num1 = stack.pop
    num2 = stack.pop
    s = num2 - num1
  elsif s == "*"
    s = stack.pop * stack.pop
  end
  stack.push(s.to_i)
end
puts stack
