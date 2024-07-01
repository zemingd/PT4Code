n,k = gets.chomp.split.map(&:to_i)
hs = gets.chomp.split.map(&:to_i)
dp = Array.new(n,10**18)
dp[0] = 0
dp[1] = (hs[1] - hs[0]).abs
(2..n-1).each do|i|
  (1..k).each do |j|
    dp[i] = [dp[i], dp[i-j] + (hs[i] - hs[i-j]).abs].min
  end
end
puts dp[n-1]