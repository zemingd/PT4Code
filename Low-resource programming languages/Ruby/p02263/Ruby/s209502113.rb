input = gets.chomp.split(' ')
stack = []
input.each do |i|
  if ["+", "-", "*"].include?(i)
    a, b = stack.pop(2)
    stack.push(a.send(i.to_sym, b))
  else
    stack.push(i.to_i)
  end
end
puts stack
