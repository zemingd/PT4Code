N, K = gets.split.map(&:to_i)
hs = gets.split.map(&:to_i)

dp = Array.new(N)
dp[0] = 0

(1...N).each do |i|
  k = [K, i].min
  dp[i] = Array.new(k).map.with_index(1) {|_, j|
      dp[i - j] + (hs[i] - hs[i - j]).abs
  }.min
end

puts dp.last

