n = gets.rstrip.to_i
hs = gets.rstrip.split.map(&:to_i)

dp = Array.new(n, 0)
1.upto(n-1) do | i |
  if i==1
    dp[i] = (hs[i] - hs[i-1]).abs
    next
  end
  step1 = (hs[i] - hs[i-1]).abs + dp[i-1]
  step2 = (hs[i] - hs[i-2]).abs + dp[i-2]
  dp[i] = step1 < step2 ? step1 : step2
end
p dp[-1]