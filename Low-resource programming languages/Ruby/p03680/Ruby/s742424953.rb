n = gets.to_i
arr = [0]
n.times{arr << gets.to_i}

arr2 = [nil]
i = 1
c = 0
while true
    c += 1
    i = arr[i]
    if i == 2
        puts c
        break
    else
        if arr2[i]
            puts -1
            break
        else
            arr2[i] = true
        end
    end
end