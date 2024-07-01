 while op != ?
    a, op, b = gets.split(" ")
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
end