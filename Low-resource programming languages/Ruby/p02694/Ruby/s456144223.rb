x = gets.chomp.to_i

tosi = 0
okane = 100
i = 0
while
    okane = (okane * 1.01) .floor
    
    i += 1
    if okane >= x
        puts i
        break
    end
end    