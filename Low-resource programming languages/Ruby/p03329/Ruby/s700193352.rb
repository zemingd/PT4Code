def ascan; gets.split.map(&:to_i);end

N = gets.to_i

dp = [N]*(N+1)
dp[0] = 0

N.times do |ptr|
    0.upto(9) do |i|
        hop = 6**i
        break if ptr+hop > N
        dp[ptr+hop] = [dp[ptr+hop], dp[ptr]+1].min
    end
    1.upto(9) do |i|
        hop = 9**i
        break if ptr+hop > N
        dp[ptr+hop] = [dp[ptr+hop], dp[ptr]+1].min
    end
end

p dp[N]

## 備忘録として他の方のコードを提出させていただきます