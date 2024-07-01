def isInt?(a)
    Integer(a)
    true
rescue ArgumentError
    false
end

def calc(ope, a, b)
    case ope
    when "+" then
        a + b
    when "-" then
        a - b
    when "*" then
        a * b
    end
end

def main()
    stack = []
    inData = gets.chomp.split(" ")
    inData.each{|x|
        if isInt?(x) then
            stack.push(x.to_i)
        else
            b = stack.pop
            a = stack.pop
            stack.push(calc(x, a, b))
        end
    }
    puts stack
end

main()