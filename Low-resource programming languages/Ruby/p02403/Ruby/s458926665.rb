while true
    numbers = gets.split.map(&:to_i)
    if numbers[0] == 0 && numbers[1] == 0
        break
    else
        numbers[0].times do
            puts "#" * numbers[1]
        end
        puts ""
    end
end
