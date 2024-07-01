while  line = gets
    n = line.chomp.split
    a = n[0].to_i
    b = n[2].to_i
    
    case n[1]
    when "+"
        puts a + b
    when "-"
        puts a - b
    when "/"
        puts a / b
    when "*"
        puts a * b
    else
        break
    end
end