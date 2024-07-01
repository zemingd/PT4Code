input=STDIN.gets.split(" ").reverse
stack=[]
until input.empty? do
  tmp = input.pop
  case tmp
  when '+' then
    stack.push(stack.pop + stack.pop)
  when '-' then
    stack.push(-1*(stack.pop - stack.pop))
  when '*' then
    stack.push(stack.pop * stack.pop)
  else
    stack.push(tmp.to_i)
  end
end

p stack.pop