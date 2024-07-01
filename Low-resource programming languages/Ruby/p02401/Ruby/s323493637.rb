loop do
    input = gets.split(" ")
    if input[1].to_s == "?" then
        break
    else
        case input[1]
            when "+" then
                result = input[0].to_i + input[2].to_i
            when "-" then
                result = input[0].to_i - input[2].to_i
            when "*" then
                result = input[0].to_i * input[2].to_i
            when "/" then
                result = input[0].to_i / input[2].to_i
        end
    end
    puts result
end