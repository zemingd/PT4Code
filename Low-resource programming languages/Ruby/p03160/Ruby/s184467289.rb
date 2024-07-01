n = gets.to_i
h = gets.chomp.split(" ").map(&:to_i)

dp = Array.new(n, Float::INFINITY)
dp[0] = 0
dp[1] = (h[1] - h[0]).abs

for i in 2.. n - 1
    step1 = dp[i - 1] + (h[i] - h[i - 1]).abs
    step2 = dp[i - 2] + (h[i] - h[i - 2]).abs
    
    if step1 < step2
        dp[i] = step1
    else
        dp[i] = step2
    end
end

puts dp[n - 1]