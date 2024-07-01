N, W = gets.split.map &:to_i
dp = Array.new(W + 1, 0)
N.times do
  w, v = gets.split.map &:to_i
  w.upto(W) do |i|
    res = dp[W - i] + v
    dp[W - i + w] = res if res > dp[W - i + w]
  end
end