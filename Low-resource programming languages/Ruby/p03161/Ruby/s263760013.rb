N, K = gets.split.map(&:to_i)
H = gets.split.map(&:to_i)
dp = Array.new(N, 0)
1.step(N-1) do |i|
  min = Float::INFINITY
  1.step(K) do |s|
    p = i-s >= 0 ? (H[i-s] - H[i]).abs + dp[i-s] : Float::INFINITY
    min = [min, p].min
  end
  dp[i] = min
end
puts dp.last