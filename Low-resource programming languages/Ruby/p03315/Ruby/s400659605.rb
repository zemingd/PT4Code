def aa
    sn = gets.chomp
    pl = 0
    pl += 1 if sn[0] == '+'
    pl += 1 if sn[1] == '+'
    pl += 1 if sn[2] == '+'
    pl += 1 if sn[3] == '+'

    puts pl*2 - 4
end

aa