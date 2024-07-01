expression = gets.chomp.split(" ")

stack = []

expression.each do |elem|
  case elem
  when '+'
    a = stack.pop
    b = stack.pop
    stack.push(b + a)
  when '-'
    a = stack.pop
    b = stack.pop
    stack.push(b - a)
  when '*'
    a = stack.pop
    b = stack.pop
    stack.push(b * a)
  when '/'
    a = stack.pop
    break if a == 0

    b = stack.pop
    stack.push(b / a)
  else
    stack.push(elem.to_i)
  end
end

puts stack.pop