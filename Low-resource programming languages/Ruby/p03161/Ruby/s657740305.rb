N, K = gets.split(' ').take(2).map(&:to_i)
height_list = gets.split(' ').take(N).map(&:to_i)

dp = Array.new(N, Float::INFINITY)
dp[0] = 0

for i in 0...(N - 1)
  height = height_list[i]
  for j in 1..K
    break if i + j > N - 1
    cost = dp[i] + (height - height_list[i + j]).abs
    dp[i + j] = cost if cost < dp[i + j]
  end
end

puts dp[N - 1]
