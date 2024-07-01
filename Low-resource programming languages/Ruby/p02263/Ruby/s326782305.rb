array = STDIN.gets.split(" ")
stack = []


(0..(array.length-1)).each{ |i|
  puts array[i]
  if  array[i] == "+"
    puts "+??£???"
    stack.push(stack[stack.length-1] + stack[stack.length-2])
    stack.delete_at(stack.length-2)
    stack.delete_at(stack.length-3)
  elsif array[i] == "-"
    stack.push(stack[stack.length-1] - stack[stack.length-2])
    stack.delete_at(stack.length-2)
    stack.delete_at(stack.length-3)
  elsif array[i] == "*"
    stack.push(stack[stack.length-2] * stack[stack.length-1])
    stack.delete_at(stack.length-2)
    stack.delete_at(stack.length-3)
  else
    stack.push(array[i].to_i)
  end
  puts stack
  puts "hoge"
}

puts stack[0]