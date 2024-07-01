stack = []
input = gets.chomp.split(" ")
for i in 1..input.size do
  s = input[i-1]
  case s
  when "+" then
    stack.push(stack.pop + stack.pop)
  when "-" then
    stack.push(- stack.pop + stack.pop)
  when "*" then
    stack.push(stack.pop * stack.pop)
  else
    stack.push(s.to_i)
  end 
end
printf("%d\n",stack.pop)
