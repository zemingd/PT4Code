n,k = gets.chomp.split.map(&:to_i)
h = gets.chomp.split.map(&:to_i)

dp = Array.new(n, 10**9)

dp[0] = 0

1.upto(n-1) do |i|
  tmp = 10**9
  1.upto(k) do |j|
    next if j > i
    tmp = [dp[i-j] + (h[i] - h[i-j]).abs, tmp].min
  end
  dp[i] = tmp
end

p dp[n-1]
