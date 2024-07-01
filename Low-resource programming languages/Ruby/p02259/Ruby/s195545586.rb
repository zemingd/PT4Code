def alsd12a
    n = gets.chomp.to_i
    an = gets.chomp.split(/\s/).map{|x| x.to_i}

    cnt = 0
    flag = true
    while flag
        flag = false
        j = n-1
        until j == 0
            if an[j] < an[j-1]
                tmp = an[j]
                an[j] = an[j-1]
                an[j-1] = tmp
                flag = true
                cnt += 1
            end
            j -= 1
        end
    end

    puts an.join(' ')
    puts cnt
end

alsd12a

