count_moji = gets.chomp.to_i
moji = gets.chomp.split("")
len = []

max = Float::MIN

count_moji.times do |j|
    
    # もじれつの破壊(破壊しない方法が知りたい)
    len[0] = moji.shift(j)
    len[1] = moji.pop(count_moji-j)
    # 破壊した文字列の結合
    moji = len[0] + len[1]


    #print len[0]," ",len[1],"\n"
    count_len = 0

    ("a".."z").each do |i|
        if len[0].count(i) >= 1 && len[1].count(i) >= 1
            count_len += 1
        end
    end

    if max < count_len
        max = count_len
    end

end

puts max