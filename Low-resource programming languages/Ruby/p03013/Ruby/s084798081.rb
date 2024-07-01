N, M = gets.split.map(&:to_i)
as = Array.new(M) { gets.to_i }
dp = [1] * (N+1)
as.each{|x|
    dp[x] = -1
}
dp[1] = 0 if dp[1] == -1
mod = 1000000007
for i in 0..(N-1) do
    if dp[i+2] != -1
        dp[i+2] = (dp[i+1] + dp[i]) % mod 
    else
        dp[i+2] = 0
    end
end

puts dp[N]
