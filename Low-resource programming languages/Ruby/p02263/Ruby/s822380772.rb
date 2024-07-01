array = gets(chomp:true).split
stack = []

array.each do |elm|
  case elm
  when "+"
    n1 = stack.pop
    n2 = stack.pop
    stack.push(n2 + n1)
  when "-"
    n1 = stack.pop
    n2 = stack.pop
    stack.push(n2 - n1)
  when "*"
    n1 = stack.pop
    n2 = stack.pop
    stack.push(n2 * n1)
  else
    stack << elm.to_i
  end
end

puts stack
