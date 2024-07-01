N, K = gets.split.map(&:to_i)
ps = gets.split.map(&:to_f)

def kitaichi(f)
  result = (f * (f + 1) / 2) / f
  return result
end

def saidai(ary)
  result = 0
  dp = Array.new(ary.size + 1, 0)
  dp[0] = ary[0, K].inject(:+)
  for i in 1..(N - K) do
    dp[i] = ary[i + K - 1] - ary[i - 1] + dp[i - 1]
  end
  return dp.find_index(dp.max)
end

ans = 0

max_i = saidai(ps)

ps[max_i, K].each do |e|
  ans += kitaichi(e)
end

puts ans
