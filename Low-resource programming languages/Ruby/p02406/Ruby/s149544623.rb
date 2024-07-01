n = gets.to_i
result = ''
i = 1
while true do
    x = i
    if x%3 == 0 then
        result += " #{i}"
    else
        loop do
            if x%10 == 3 then
                result += " #{i}"
                break
            end
            x /= 10;
            break if x == 0
        end
    end
    i += 1
    break if i > n
end
puts result
