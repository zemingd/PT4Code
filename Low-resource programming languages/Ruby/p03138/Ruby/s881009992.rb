n,k = gets.split.map &:to_i
a = gets.split.map &:to_i

#kは最大数
#f(X) = (X ^ a[0]) + (X ^ a[0]) ...

#ビットごとにやる
#上位からやっていく
#ビットごとに1を入れたときにkを超えるなら入れない
target = 0
sum = 0
l = [k.bit_length, a.max.bit_length].max
l.times do |i|
    t = l - i - 1

    m = 2 ** (t)

    count0 = a.count{|ai|ai[t] == 0}
    count1 = a.count{|ai|ai[t] == 1}

    if count0 < count1
        sum += m * count1
    else
        #count0を採用したいときにtargetの合計がkを超えるとダメ
        if target + m > k
            sum += m * count1
        else
            sum += m * count0
            target += m
        end
    end
end

puts sum
