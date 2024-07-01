# 全部+ min
# 全部- max
# +=混在 ・・真ん中？ → 0を含む場合は、 dont careかも！
def b
    n, l = gets.chomp.split(/\s/).map{|x| x.to_i}

    ifzero = false
    total = 0
    flaver = l
    apples = Array.new(n)
    apples.each_with_index do |apple,i|
        apples[i] = flaver
        ifzero = true if flaver == 0
        total += flaver
        flaver += 1
    end

#    p apples
    if ifzero
        p total
    else
        min = apples.min
        if min > 0
            p total-min
        else
            p total-apples.max
        end
    end
end

b