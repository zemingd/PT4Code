line = gets.chomp.split
stack = []
 
line.each do |x|
  case x
  when '+', '-', '*'
    b = stack.pop
    a = stack.pop
    case x
    when '+'
      stack.push(a + b)
    when '-'
      stack.push(a - b)
    when '*'
      stack.push(a * b)
 
    end
  else
    stack.push(x.to_i)
  end
end
 
puts stack