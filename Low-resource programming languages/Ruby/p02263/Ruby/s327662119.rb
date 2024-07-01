def calc(exp)
  stack = []
  exp.each do |s|
    if s =~ /\d+/
      stack.push s.to_i
    else
      v2 = stack.pop
      v1 = stack.pop
      case s
      when '+'
        v = v1+v2
      when '-'
        v = v1-v2
      when '*'
        v = v1*v2
      end
      stack.push v
    end
  end
  stack[0]
end
  
puts calc(STDIN.readline.split(/\s/))