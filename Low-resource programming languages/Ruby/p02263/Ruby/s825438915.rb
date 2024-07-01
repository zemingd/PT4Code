while ary  =  gets
  ary.chomp
  stack = []
  ary = str.split(" ")
  while ary.size>0
    a = ary.shift
    if  a == "+"
      x = stack.shift.to_i + stack.shift.to_i
    elsif a == "-"
      x = -stack.shift.to_i + stack.shift.to_i
    elsif a == "*"
      x = stack.shift.to_i * stack.shift.to_i 
    else
      x = a
    end
    stack.unshift(x)
    
    end
    puts stack[0]
end