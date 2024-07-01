k = gets.strip.split(" ").map(&:to_i).last
hs = gets.strip.split(" ").map(&:to_i)

dp = Array.new(hs.size, 0)

1.upto(hs.size - 1) do |i|
  dp[i] = 10**9

  (i - 1).downto([i - k, 0].max) do |j|
    dp[i] = [dp[i], dp[j] + (hs[j] - hs[i]).abs].min
  end
end

puts dp.last
