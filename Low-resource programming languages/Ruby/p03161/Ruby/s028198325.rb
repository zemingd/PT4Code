n, k = gets.chomp.split.map(&:to_i)
a = gets.chomp.split.map(&:to_i)

if k >= n - 1
  puts (a[-1] - a[0]).abs
  exit
end

dp = [0xffffffff] * n
dp[0] = 0
(1...n).to_a.each do |i|
  (i - 1).downto([i - k, 0].max) do |j|
    v = dp[j] + (a[i] - a[j]).abs

    dp[i] = v if v < dp[i]
  end
end

puts dp[-1]