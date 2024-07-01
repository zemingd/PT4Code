n,m = gets.chomp.split.map(&:to_i)
s_ary = []
m.times do
    s_ary << gets.chomp.split.map(&:to_i)
end
p_ary = gets.chomp.split.map(&:to_i)

count = 0
for i in 0...2**n
    flag = true
    # 店頭消灯
    ary = []
    for j in 0...n
        if ((i >> j) & 1) == 1
            ary << 1
        else
            ary << 0
        end
    end
    # p ary

    on_flag = true
    for j in 0...m
        tmpcount = 0
        # 店頭消灯数を管理
        for k in 1..s_ary[j][0]
            if ary[s_ary[j][k]-1] == 1
                tmpcount += 1
            end
        end
        if tmpcount % 2 != p_ary[j]
            on_flag = false
        end
    end
    if on_flag
        count += 1
    end
    # puts
    # p ary
    # p [tmpcount, count]
end
puts count

