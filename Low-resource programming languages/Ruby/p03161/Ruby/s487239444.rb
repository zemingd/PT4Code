N, K = gets.split.map(&:to_i)
H = gets.split.map(&:to_i)
dp = Array.new(N, 0)
1.step(N-1) do |i|
  p = 1.step(K).map do |s|
    i-s >= 0 ? (H[i-s] - H[i]).abs + dp[i-s] : Float::INFINITY
  end
  dp[i] = p.min
end
puts dp.last