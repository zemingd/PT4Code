S = gets.chomp
stack = []
S.chars do |c|
    if stack.size > 0 && stack[-1] != c
        stack.pop
    else
        stack.push(c)
    end
end
puts S.size - stack.size