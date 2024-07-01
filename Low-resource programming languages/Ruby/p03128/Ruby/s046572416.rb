class Array
    include Comparable
end

N, M = gets.split.map(&:to_i)
as = gets.split.map(&:to_i)

num = [-1,2,5,5,4,5,6,3,7,6]
mx = Array.new(8, -1)
as.each do |a|
    mx[num[a]] = [mx[num[a]], a].max
end

dp = Array.new(N+10, -10**9)
use = Array.new(N+10)
dp[0] = 0
use[0] = Array.new(10, 0)
(0..N).each do |i|
    next if dp[i] < 0
    (2..7).each do |n|
        next if mx[n] < 0
        d2 = dp[i] + 1
        use2 = use[i].dup
        use2[9-mx[n]] += 1
        if dp[i+n] < d2 || (dp[i+n] == d2 && use[i+n] < use2)
            dp[i+n] = d2
            use[i+n] = use2
        end
    end
end

ans = ""
(0..9).each do |i|
    use[N][i].times do
        ans << (9-i).to_s
    end
end
puts ans