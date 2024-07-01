a, b, c, d = gets.split(' ').map(&:to_i)
dp = {}
(a..b).each do |i|
  next if dp[i]
  next if (i % c == 0)
  next if (i % d == 0)
  n = i
  while(b > n) do
    dp[n] = 1
    n = n + c*d
  end
end
puts dp.size