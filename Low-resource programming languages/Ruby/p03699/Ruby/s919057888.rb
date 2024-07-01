N = gets.to_i
s_list = N.times.map { gets.to_i }
dp = Array.new(N + 10)
dp[0] = Hash.new
(0...(s_list.size)).each do |i|
  s = s_list[i]
  dp[i + 1] = dp[i].dup
  dp[i].keys.each do |j|
    dp[i + 1][j + s] = true
  end
  dp[i + 1][s] = true
end
ans = dp[N].select do |k, _|
  k % 10 != 0
end.map { |k, _| k }.max || 0
puts ans
