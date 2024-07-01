x = gets.to_i

while true
    flag = true
    for i in 2..x-1
        if x % i == 0
            flag = false
            break
        end
    end
    if flag
        puts x
        break
    end
    x += 1
end