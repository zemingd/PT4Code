N, M = gets.split.map(&:to_i)
as = gets.split.map(&:to_i)

num = [0, 2, 5, 5, 4, 5, 6, 3, 7, 6]

dp = Array.new(N+1, "!")
dp[0] = ""
(2..N).each do |i|
    as.each do |a|
        next if i-num[a] < 0 || dp[i-num[a]] == "!"
        d2 = dp[i-num[a]] + a.to_s
        if d2.size > dp[i].size || (d2.size == dp[i].size && d2 > dp[i])
            dp[i] = d2
        end
    end
end

puts dp[N]