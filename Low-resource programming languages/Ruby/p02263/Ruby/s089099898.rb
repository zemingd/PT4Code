input = gets.split
stack = []

input.each do |e|
  if e =~ /\A[-+]?[0-9]*\.?[0-9]+\Z/
    stack.push(e.to_i)
  else
    res = stack[-2] + stack[-1] if e == "+"
    res = stack[-2] - stack[-1] if e == "-"
    res = stack[-2] * stack[-1] if e == "*"
    res = stack[-2] / stack[-1] if e == "/"
    stack.pop(2)
    stack.push(res)
  end
  #print stack
end

puts stack
