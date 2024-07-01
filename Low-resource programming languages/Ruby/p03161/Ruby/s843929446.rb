N , K = gets.split.map{|i| i.to_i}
h = gets.split.map{|i| i.to_i}
dp = Array.new(N , 10 ** 19)
dp [0] = 0

for i in 1 .. N - 1
    if i <= K
        dp[i] = (h[i] - h[0]).abs
        next
    end

    for j in 1 .. K
        if (dp[i] > dp[i - j] + (h[i] - h[i - j]).abs)
            dp[i] = dp[i - j] + (h[i] - h[i - j]).abs
        end
    end
end

puts dp[N - 1]