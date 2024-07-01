n,m=gets.split.map(&:to_i)
A=m.times.map{gets.to_i}
mod=10 ** 9 + 7
danger = Array.new(n+10, false)
A.each do |a|
  danger[a] = true
end

dp = Array.new(n+1, 0)
dp[0] = 1

0.upto(n-1) do |i|
  if !danger[i+1]
    dp[i+1] = (dp[i+1] + dp[i]) % mod
  end

  if !danger[i+2]
    dp[i+2] = (dp[i+2] + dp[i]) % mod
  end
end

puts dp[n]
