formula = gets.split

# formula = %w(1 2 + 3 4 - *)
opes = ['+','-','*']
stack = []
ans = nil
formula.each do |char|
  # binding.pry
  if opes.include?(char)
    first = stack.pop
    second = stack.pop
    str = "#{second}"+"#{char}"+"#{first}"
    stack.push(eval(str))
  else
    stack.push(char)
  end
end
puts stack[0]

