que = [] 
while que  =  gets.chomp
    stack = []
    que = que.split("")

    while que.size>0
      a = que.shift
      if  a == "+"
        x = stack.shift.to_i + stack.shift.to_i
        stack.unshift(x)
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