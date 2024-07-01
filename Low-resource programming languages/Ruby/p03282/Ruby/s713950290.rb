def cc106
    s = gets.chomp
    k = gets.chomp.to_i

    if s.length == 1
        puts s
        exit
    end

    if k == 1
        puts s[0]
        exit
    end

    if s.split(//).uniq.length == 1
        puts s[0]
        exit
    end

    # 先頭から連続する１の件数を取得
    c1 = 0
    s.each_char do |c|
        if c == '1'
            c1 += 1
        else
            break
        end
    end

    if k <= c1
        puts 1
        exit
    end

    puts s[c1]
end

cc106