n = gets.to_i

count = 0
while true
    # 6のべき乗でいくらまで行けるか？
    c6 = 0
    while 6 ** (c6 + 1) <= n
        c6 += 1
    end
    # 9のべき乗でいくらまで行けるか？
    c9 = 0
    while 9 ** (c9 + 1) <= n
        c9 += 1
    end
    puts "n, c6, c9 = #{n}, #{c6}, #{c9}"
    if c6 == 0 && c9 == 0
        count += n
        n -= n
        break
    elsif 6 ** c6 < 9 ** c9
        count += 1
        n -= 9 ** c9
    else
        count += 1
        n -= 6 ** c6
    end
end

puts count