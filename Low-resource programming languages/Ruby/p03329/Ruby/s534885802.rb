n = gets.strip.to_i

dp = Array.new(n+1 , n)
dp[0]=0

prices = ([1] + (1..7).map{|i|[6**i,9**i]}.flatten.keep_if{|e|e<100_000}).sort

(1..n).each do |i|
  prices.each do|price|
    dp[i] = dp[i-price]+1 if ((i - price)>=0)&&(dp[i-price]+1 < dp[i])
  end
end

puts dp[-1]
