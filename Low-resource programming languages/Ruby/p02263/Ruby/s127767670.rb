formula = gets.chomp.split
stack = Array.new
formula.each do |i|
  if i == '+'
    a = stack.pop.to_i
    b = stack.pop.to_i
    stack.push(a + b)
  elsif i == '*'
    a = stack.pop.to_i
    b = stack.pop.to_i
    stack.push(a * b)
  elsif i == '-'
    b = stack.pop.to_i
    a = stack.pop.to_i
    stack.push(a - b)
  else
    stack.push(i)
  end
end
puts stack[0]

