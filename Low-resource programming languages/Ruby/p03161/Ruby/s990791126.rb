n, k = gets.rstrip.split.map(&:to_i)
hs = gets.rstrip.split.map(&:to_i)

dp = Array.new(n, 0)
1.upto(n-1) do | i |
  candidates = []
  if i-k > 0
    tmpk = k
  else
    tmpk = i
  end
  tmpk.downto 1 do | j |
    candidates << dp[i-j] + (hs[i-j]-hs[i]).abs
  end
  dp[i] = candidates.min
end
p dp[-1]