N,K=gets.split.map(&:to_i)
steps=gets.split.map(&:to_i)
dp = []
dp << 0
dp << (steps[0] - steps[1]).abs
pos = 2
while pos < N
    k = 1
    min = 1000000
    while k <= K
        break if (pos - k) < 0
        tmp = dp[pos-k] + (steps[pos] - steps[pos-k]).abs
        min = tmp if tmp < min
        k += 1
    end

    dp << min
    pos += 1
end
puts dp[N-1]

