def cc
    n = gets.chomp.to_i#.map{|x| x.to_i}
    m = gets.chomp.split(/\s/).map{|x| x.to_i}
    y = gets.chomp.split(/\s/).map{|x| x.to_i}

    cnt = 0
    for i in 1..n
        j = i - 1

        if m[j] >= y[j]
            cnt += y[j]
        else
            y[j] -= m[j]
            cnt += m[j]

            if y[j] > 0
                if m[i] >= y[j]
                    m[i] -= y[j]
                    cnt += y[j]
                else
                    cnt += m[i]
                    m[i] = 0
                end
            end
        end
    end

    puts cnt
end

cc