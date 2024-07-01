num = gets.split(" ")
i = 0
k = 1
while i < 2
    while k < 3
        if num[i].to_i > num[k].to_i
            tmp = num[i]
            num[i] = num[k]
            num[k] = tmp
        end
        k = k + 1
    end
    i = i + 1
    k = i + 1
end
puts "#{num[0]} #{num[1]} #{num[2]}"