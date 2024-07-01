require 'set'; require 'prime'
INF=Float::INFINITY
MOD=10**9+7
n,m = gets.chomp.split.map(&:to_i)
a=Set.new
m.times do |i|
  a.add gets.chomp.to_i
end

dp=Array.new(n)
dp[0] = 1
dp[1] = a.include?(1) ? 0 : 1
2.upto(n).each do |i|
  if a.include?(i)
    dp[i] = 0
  else
    dp[i] = (dp[i-1] + dp[i-2]) % MOD
  end
end

puts dp[n] % MOD
