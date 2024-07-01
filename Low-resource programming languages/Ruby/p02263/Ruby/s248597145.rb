stack = []
line = gets.chomp.split
line.each{|elem|
    case elem
    when "+"
        stack.push stack.pop + stack.pop
    when "-"
        stack.push (stack.pop - stack.pop) * -1
    when "*"
        stack.push  stack.pop * stack.pop
    else
        stack.push elem.to_i
    end
}
puts stack.pop