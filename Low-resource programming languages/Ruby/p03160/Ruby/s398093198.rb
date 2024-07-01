N = gets.to_i
h = gets.split.map(&:to_i)
INF = Float::INFINITY
dp = Array.new(100010){INF}

dp[0]=0

N.times do |i|
  dp[i] = [dp[i],dp[i-1]+(h[i]-h[i-1]).abs].min
  if i>1
    dp[i] = [dp[i],dp[i-2]+(h[i]-h[i-2]).abs].min
  end
end

puts dp[N-1]