# Simple Calculator
loop do
    a, op, b = gets.split
    a = a.to_i
    b = b.to_i
    case op
    when '+'
        puts a + b
    when '-'
        puts a - b
    when '*'
        puts a * b
    when '/'
        puts a / b
    else
        break
    end
end