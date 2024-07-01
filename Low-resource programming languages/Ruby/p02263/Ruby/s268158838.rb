a = gets.split

stack = []
a.each do |e|
    if e == '+'
        stack.push(stack.pop + stack.pop)
    elsif e == '-'
        a = stack.pop
        b = stack.pop
        stack.push(b - a)
    elsif e == '*'
        stack.push(stack.pop * stack.pop)
    else
        stack.push(e.to_i)
    end
end

puts stack.pop
