def s(d, i, n, dp) #現在　足した数
  return if d > n
  dp[d] ||= 999
  dp[d] = [dp[d], i].min
  (1..5).each do |m|
    s(d+9**m, i+1, n, dp)
  end
  (1..6).each do |m|
    s(d+6**m, i+1, n, dp)
  end
  s(d+1, i+1, n, dp)
end

n=gets.to_i
dp = []
s(0, 0, n, dp)
p dp[n]
