while true
    number = gets
    if number.to_i == 0
        break
    else
        total = 0
        number.size.times do |num|
            total += number[num].to_i
        end
        puts total
    end
end
