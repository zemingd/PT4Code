array = STDIN.gets.split(" ")
stack = []

(0..(array.length-1)).each{ |i|
  if  array[i] == "+"
    stack.push(stack[stack.length-2] + stack[stack.length-3])
    stack.delete_at(stack.length-3)
  elsif array[i] == "-"
    stack.push(stack[stack.length-3] - stack[stack.length-2])
    stack.delete_at(stack.length-3)
  elsif array[i] == "*"
    stack.push(stack[stack.length-2] * stack[stack.length-3])
    stack.delete_at(stack.length-3)
  else
    stack.push(array[i].to_i)
  end
}

puts stack[0]