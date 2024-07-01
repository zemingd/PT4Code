n, k = gets.split(' ').map(&:to_i)
h = gets.split(' ').map(&:to_i)
dp = Array.new(100100, 10**9)

dp[0] = 0
0.upto(n-1) do |i|
  1.upto(k) do |j|
    if i+j < n
      dp[i+j] = [dp[i+j], dp[i] + (h[i] - h[i+j]).abs].min
    end
  end
end

print(dp[n-1])
