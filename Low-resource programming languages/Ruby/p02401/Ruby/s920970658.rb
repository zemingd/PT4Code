a, op, b = gets.split
while op != '?'
    a, b = a.to_i, b.to_i
    case op
    when '+'
        puts a + b
    when '-'
        puts a - b
    when '*'
        puts a * b
    when '/'
        puts a / b
    end
    a, op, b = gets.split
end