while
x = gets()
x = x.split
    if x[1] == "?";break
end
    a = x[0].to_i
    b = x[2].to_i
    op = x[1]
    if op == "+"
        puts a + b
    elsif op == "-"
    puts a - b
    elsif op == "*"
    puts a * b
    elsif op == "/"
    puts  a / b
    end
end

