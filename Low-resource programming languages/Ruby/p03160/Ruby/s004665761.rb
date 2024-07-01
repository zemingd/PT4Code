def min(a,b)
  a < b ? a : b
end

N = gets.to_i
H = gets.split.map(&:to_i)
dp = Array.new(N, Float::INFINITY)
dp[0] = 0
N.times do |i|
  1.upto(2) do |j|
    next if i - j < 0
    dp[i] = min(dp[i], dp[i - j] + (H[i] - H[i - j]).abs)
  end
end
puts dp[N - 1]