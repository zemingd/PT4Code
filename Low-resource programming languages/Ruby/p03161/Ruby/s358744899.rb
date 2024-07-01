N, K = gets.split.map(&:to_i)
hs = gets.split.map(&:to_i)

dp = Array.new(N)
dp[0] = 0

(1...N).each do |i|
  min = nil
  [K, i].min.times do |j|
    m = dp[i - (j + 1)] + (hs[i] - hs[i - (j + 1)]).abs

    min = m if min.nil? || m < min

    break if m == dp[i - (j + 1)]
  end

  dp[i] = min
end

puts dp.last

