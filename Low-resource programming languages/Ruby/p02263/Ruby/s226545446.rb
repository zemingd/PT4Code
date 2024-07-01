arr =  gets.split(" ")
stack = []

arr.each do |x|
  if x =~ /\d/
    stack.push x
  else
    a, b = stack.pop, stack.pop
    stack.push(eval(sprintf("%s %s %s" ,b, x, a)))
  end
end

puts stack[0]
