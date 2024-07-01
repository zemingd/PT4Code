N, M = gets.split().map(&:to_i)

dp = []
br = []

100010.times do
  dp.push(0)
  br.push(true)
end

M.times do
  br[gets.to_i] = false
end

dp[0] = 1

(1..N).each do |i|
  i1 = 0
  i2 = 0
  if br[i-1]
    i1 = dp[i-1]
  end
  if i > 1
    if br[i-2]
      i2 = dp[i-2]
    end
  end
  dp[i] = i1 + i2
end

puts dp[N] % 1000000007