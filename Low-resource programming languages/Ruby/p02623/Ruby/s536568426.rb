n,m,k = gets.chomp.split.map(&:to_i)
as = gets.chomp.split.map(&:to_i)
bs = gets.chomp.split.map(&:to_i)

max_cnt = 0
j = m

for i in 0..n do
    if as[i].nil?
       asum = 0
       a = 0
    else
       asum = as[0..i].sum
        a = i + 1
    end
    break if asum > k
    while bs[0..j-1].sum > k - asum do
        j -= 1
    end
    cnt = a + j
    if max_cnt < cnt
        max_cnt = cnt
    end
end

puts max_cnt