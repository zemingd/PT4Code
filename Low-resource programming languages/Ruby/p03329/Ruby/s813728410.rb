n = gets.to_i

def search(n, count)
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
    # puts "n, c6, c9 = #{n}, #{c6}, #{c9}"
    if c6 == 0 && c9 == 0
        return count + n
    end
    c1 = search(n - 9 ** c9, count + 1)
    c2 =  search(n - 6 ** c6, count + 1)
    return [c1, c2].min
end

puts search(n, 0)
