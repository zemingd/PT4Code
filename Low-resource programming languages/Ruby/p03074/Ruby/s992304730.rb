n, k = gets.chomp.split.map(&:to_i)
s = gets.chomp

asyuku_ary = []
count = 0
# now
# first
for i in 0..(n-1)
    if i == 0
        # first = s[i]
        asyuku_ary << [s[i],1]
        now = s[i]
    else
        if now == s[i]
            asyuku_ary[-1][-1] += 1
        else
            now = s[i]
            asyuku_ary << [s[i], 1]
        end
    end
end
ruisekiwa = []
asyuku_ary.each do |item|
    if ruisekiwa == []
        ruisekiwa << item[1].to_i
    else
        ruisekiwa << item[1].to_i + ruisekiwa[-1]
    end
end
# p asyuku_ary
# p ruisekiwa
flag = false
if s[0].to_i == 1
    if 2 * k >= n
        flag = true
    else
        max = ruisekiwa[2 * k]
        now = 2*k
        last = -1
    end
else
    if 2 * k - 1 >= n
        flag = true
    else
        max = ruisekiwa[2 * k - 1]
        now = 2*k-1
        last = -2
    end
end

# p asyuku_ary.length
# p ruisekiwa
# p now
# p ruisekiwa[now]
if flag
    puts n
else
    while true
        # p max
        if now + 2 >= asyuku_ary.length
            now = asyuku_ary.length - 1
            last += 2
            max = [max, ruisekiwa[now] - ruisekiwa[last]].max
        else
            now += 2
            last += 2
            max = [max, ruisekiwa[now] - ruisekiwa[last]].max
        end
        if now >= asyuku_ary.length - 1
            break
        end
    end
    puts max
end
