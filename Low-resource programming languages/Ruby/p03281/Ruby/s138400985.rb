n = gets.to_i

result = 0
for i in 1..n do
    count = 0
    if i % 2 != 0
        for k in 1..n do
            if i % k == 0
                count += 1
            end
        end
        if count == 8
            result += 1
        end
    end
end

puts result
