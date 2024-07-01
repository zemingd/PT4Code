inputs = gets.split

stack = []

inputs.each do |element|
  if ["+", "-", "*"].include?(element)
    a = stack.pop
    b = stack.pop
    stack.push(b.method(element).(a))
  else
    stack.push(element.to_i)
  end
end

puts stack.pop

