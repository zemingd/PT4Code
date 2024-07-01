n = gets.to_i
 
i = 1
 
while i < n
    i += 1
    x = i
 
    if x % 3 == 0
        print " #{i}"
        next
    end
 
    x *= 10
    while (x /= 10) > 0
        if x % 10 == 3
            print " #{i}"
            break
        end
    end
 
end
 
puts ""