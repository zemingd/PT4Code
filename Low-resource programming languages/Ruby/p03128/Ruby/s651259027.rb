N, M = gets.split.map(&:to_i)
as = gets.split.map(&:to_i)

num = [-1,2,5,5,4,5,6,3,7,6]
mx = Array.new(8, -1)
as.each do |a|
    mx[num[a]] = [mx[num[a]], a].max
end

dp = Array.new(N+10, -10**9)
prev = Array.new(N+10, 0)
dp[0] = 0
(0..N).each do |i|
    (2..7).each do |n|
        if mx[n] >= 0 && dp[i+n] < dp[i]+1
            dp[i+n] = dp[i]+1
            prev[i+n] = i
        end
    end
end

n = N
ans = []
while n > 0
    ans.push(mx[n - prev[n]])
    n = prev[n]
end

puts ans.sort.reverse.join