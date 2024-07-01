N, K = gets.split(' ').take(2).map(&:to_i)
height_list = gets.split(' ').take(N).map(&:to_i)

dp = Array.new(N, Float::INFINITY)
dp[0] = 0

(0...(N - 1)).each do |i|
  height = height_list[i]
  k = [N - (i + 1), K].min
  (1..k).each do |j|
    cost = dp[i] + (height - height_list[i + j]).abs
    dp[i + j] = cost if cost < dp[i + j]
  end
end

puts dp[N - 1]
