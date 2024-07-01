n = gets.chop.to_i

INF = n


dp = [n]*(n+1)

dp[0] = 0

n.times do |i|

  (0..6).each do |j|
    hop = 6**j
    break if hop + i > n
    dp[i+hop] = [dp[i+hop], dp[i]+1].min
  end

  (0..6).each do |j|
    hop = 9**j
    break if hop + i > n
    dp[i+hop] = [dp[i+hop], dp[i]+1].min
  end
end

p dp[n]