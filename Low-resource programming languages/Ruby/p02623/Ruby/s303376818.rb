n,m,k = gets.chomp.split.map(&:to_i)
as = gets.chomp.split.map(&:to_i)
bs = gets.chomp.split.map(&:to_i)

max_cnt = 0
asum = 0
bsum = bs.sum
j = m

for i in 0..n do
    if i == 0
       asum = 0
       a = 0
    else
       asum += as[i-1]
    end
    break if asum > k
    while bsum > k - asum do
        j -= 1
	    bsum -= bs[j]
    end
    cnt = i + j
    if max_cnt < cnt
        max_cnt = cnt
    end
end

puts max_cnt