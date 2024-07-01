N,K = gets.split.map(&:to_i)
steps = gets.split.map(&:to_i)
inf = 10**12
dp = Array.new(N){inf}
dp[0] = 0
dp[1] = (steps[0]-steps[1]).abs

(2...N).each do |i|
  (1..K).each do |k|
    next if k > i
    d = dp[i-k] + (steps[i-k] - steps[i]).abs
    dp[i] = d if d < dp[i]
  end
end

puts dp[N-1]
