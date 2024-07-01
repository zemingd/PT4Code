def cc
    s = gets.chomp
    l = s.length

    if l == 1
        puts 0
        exit
    end

    ss = s.split(//).uniq
    if ss.length == 1
        puts l/2
        exit
    end

#    puts s
    cnt = 0
    for i in 2..l
        if s[i-2] == s[i-1]
            s[i-1] = (1 - s[i-1].to_i).to_s
            cnt += 1
        end
    end
#    puts s

    puts cnt
end

cc