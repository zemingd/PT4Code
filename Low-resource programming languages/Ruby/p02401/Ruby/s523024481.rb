a, op, b = gets.split(" ")
while op != ?
    case op
    when op == +
        puts a.to_i+b.to_i
    when op == -
        puts a.to_i-b.to_i
    when op == *
        puts a.to_i*b.to_i
    when op == /
        puts a.to_i/b.to_i
    end
    a, op, b = gets.split(" ")
end