def s(i, dp, st)
  w = st
  while w<=i
    dp[i] = [dp[i], dp[i-w]+1].min
    w *= st
  end
end

n=gets.to_i
dp = []
(n+1).times do |i|
  dp[i] = i
  s(i, dp, 6)
  s(i, dp, 9)
end
puts dp[n]
