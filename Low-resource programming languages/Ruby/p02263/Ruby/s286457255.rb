xs = gets.chomp.split
stack = []

xs.each { |x|
    case x
    when '+'
        a = stack.pop.to_i
        b = stack.pop.to_i
        stack.push(b + a)
    when '-'
        a = stack.pop.to_i
        b = stack.pop.to_i
        stack.push(b - a)
    when '*'
        a = stack.pop.to_i
        b = stack.pop.to_i
        stack.push(b * a)
    else
        stack << x
    end
}

puts stack.pop
