stack = []
line = gets.chomp.split
line.each{|str|
    case str
    when "+"
        stack << stack.pop + stack.pop
    when "-"
        stack << -1 * stack.pop + stack.pop
    when "*"
        stack << stack.pop * stack.pop
    else
        stack << str.to_i
    end
}
puts stack.pop

