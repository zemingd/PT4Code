N = gets.to_i

dp = Array.new(N+1, 0)
dp[1] = 1
(1..N).each do |i|
    cand = dp[i-1] + 1
    if i >= 6
        n = (Math.log(i)/Math.log(6)).floor
        c = dp[i-6**n] + 1
        cand = c if cand > c
    end
    if i >= 9
        n = (Math.log(i)/Math.log(9)).floor
        c = dp[i-9**n] + 1
        cand = c if cand > c
    end
    dp[i] = cand
end
puts dp[N]