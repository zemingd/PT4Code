loop do
    input = gets.split(" ").map{|i| i.to_i}
    if input[0]+input[1] == 0
        break
    else
        input.sort!
        puts ("#{input[0]} #{input[1]}")
    end
end