 a, op, b = gets.split(" ")
while op != ?
    if op == +
        puts a.to_i+b.to_i
    elsif op == -
        puts a.to_i-b.to_i
    elsif op == *
        puts a.to_i*b.to_i
    elsif op == /
        puts a.to_i/b.to_i
    end
end