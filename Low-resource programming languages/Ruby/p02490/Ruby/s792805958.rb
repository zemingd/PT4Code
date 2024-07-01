#coding utf-8
while true
        input = gets.split(" ")
        break if input[0].to_i == 0 && input[1].to_i == 0
        if input[0].to_i < input[1].to_i
                puts"#{input[0]} #{input[1]}"
        else 
                puts"#{input[1]} #{input[0]}"
        end
end