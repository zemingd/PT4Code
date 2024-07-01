n, k = gets.chomp.split(" ").map(&:to_i)
vec = gets.chomp.split(" ").map(&:to_i)
INF = 10 ** 12
dp = []
dp << 0
dp << (vec[0] - vec[1]).abs
1.upto(n - 1) do |i|
  dp << INF
  j=1
  while(j<=k && i-j >= 0)
    cost = (dp[i-j]+(vec[i-j]- vec[i]).abs
    dp[i] = cost if cost < dp[i]
    j+=1
  end
end
puts dp[n - 1]