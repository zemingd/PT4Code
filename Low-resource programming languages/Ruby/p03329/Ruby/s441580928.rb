N = gets.to_i

vs = [1]

[6, 9].each do |v|
  k = v
  while k <= N
    vs << k
    k *= v
  end
end

dp = Array.new(N + 1, 1.0 / 0)
dp[0] = 0
1.upto(N) do |i|
  vs.each do |v|
    next if i < v
    dp[i] = [dp[i], dp[i - v] + 1].min
  end
end

puts dp[N]
