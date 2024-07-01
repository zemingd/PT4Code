n,m,k = gets.chomp.split.map(&:to_i)
as = gets.chomp.split.map(&:to_i)
bs = gets.chomp.split.map(&:to_i)

max_cnt = 0
j = m
asum = 0

for i in 0..n do
    bsum = bs[0..j-1].sum
    if as[i].nil?
       asum = 0
       a = 0
    else
       asum += as[i]
        a = i + 1
    end
    break if asum > k
    while bsum > k - asum do
        j -= 1
        bsum -= bs[j]
    end
    cnt = a + j
    if max_cnt < cnt
        max_cnt = cnt
    end
end

puts max_cnt