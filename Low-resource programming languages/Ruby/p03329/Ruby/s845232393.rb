N = gets.to_i

dp = Array.new(N+1, 0)
(1..N).each do |i|
    cand = dp[i-1] + 1
    n = 6
    while n <= i
        c = dp[i-n] + 1
        cand = c if cand > c
        n *= 6
    end
    n = 9
    while n <= i
        c = dp[i-n] + 1
        cand = c if cand > c
        n *= 9
    end
    dp[i] = cand
end
puts dp[N]