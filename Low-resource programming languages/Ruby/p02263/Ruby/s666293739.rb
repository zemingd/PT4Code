def rpn()
  stack = []
  a = gets.split(' ')
  for i in 0..a.length-1
    if a[i] == '+'
      b = stack.shift
      c = stack.shift
      stack.unshift(b+c)
    elsif a[i] == '-'
      b = stack.shift
      c = stack.shift
      stack.unshift(c-b)
    elsif a[i] == '*'
      b = stack.shift
      c = stack.shift
      stack.unshift(b*c)
    elsif
      stack.unshift(a[i].to_i)
    end
  end
  puts stack.shift
end

rpn() 