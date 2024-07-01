while  line = gets
    a = n[0].to_i
    b = n[2].to_i
    
    break if n == "?"
   
    case n[1]
    when "+"
        puts a + b
    when "-"
        puts a - b
    when "/"
        puts a / b
    when "*"
        puts a * b
    end
end