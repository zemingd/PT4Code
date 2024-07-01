def abc_148_d
    n = gets.chomp.to_i
    an = gets.chomp.split(/\s/).map{|x| x.to_i}

    cnt = 0
    no = 1
    for i in 1..n
        if an[i-1] == no
            no += 1
        else
            cnt += 1
        end
    end

    cnt = -1 if cnt == n
    puts cnt
end

abc_148_d