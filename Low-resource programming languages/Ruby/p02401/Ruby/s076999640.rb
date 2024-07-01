loop do 
    x = gets.chomp.split
     a = x[0].to_i
     y = x[1]
     b = x[2].to_i
    break if x.include?("?")
    if y == "+"
        puts a+b
    elsif y == "-"
        puts a-b
    elsif y == "/"
        puts a/b
    elsif y == "*"
        puts a*b
    end
end

