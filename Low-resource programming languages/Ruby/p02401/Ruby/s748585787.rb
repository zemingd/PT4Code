loop do
    code = gets.split(" ")
    break if code[1] == "?"
    puts eval code.join
end
    
