N = gets.to_i
h = gets.split().map(&:to_i)

inf = 1000000000

dp = []

1000000.times do 
  dp.push(inf)
end

dp[0] = 0

def chmin(a, b)
  if a > b
    return b
  end
  return a
end

(1..N-1).each do |i|
  dp[i] = chmin(dp[i], (h[i-1]-h[i]).abs + dp[i-1])
  if i > 1
    dp[i] = chmin(dp[i], (h[i-2]-h[i]).abs + dp[i-2])
  end
end

puts dp[N-1]