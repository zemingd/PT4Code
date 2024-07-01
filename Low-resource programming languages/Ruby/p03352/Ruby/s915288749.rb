num = gets.chomp.to_i
i = 1
remenber = 0

loop do


    j = 2

    # n乗の探索
    loop do
        #puts i**j

        if i**j > 1000
            break
        end

        if (i**j <= num) && ((i+1) ** j > num)
            if remenber < i ** j
                #print i,"**",j,"=",i ** j,"記憶\n"
                remenber = i ** j
            end
            break
        end

        j += 1
    end

    
    if i > 100
        puts remenber
        exit
    end
 
    i += 1
end