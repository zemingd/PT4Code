n, k = gets.chomp.split.map(&:to_i)
a = gets.chomp.split.map(&:to_i)

if k >= n - 1
  puts (a[n - 1] - a[0]).abs
end

dp = [0] * n
(1...n).to_a.each do |i|
  min = 0xfffffff
  (i - 1).downto([i - k, 0].max) do |j|
    min = [min, dp[j] + (a[i] - a[j]).abs].min
  end
  dp[i] = min
end
puts dp[-1]