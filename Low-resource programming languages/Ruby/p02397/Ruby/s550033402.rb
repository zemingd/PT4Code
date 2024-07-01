loop do
    input = gets.split(" ").map(&:to_i)
    if input[0]+input[1] == 0
        break
    else
        input.sort!
        puts ("#{input[0]} #{input[1]}")
    end
end