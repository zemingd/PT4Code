n, m = gets.split.map(&:to_i)
a = m.times.map{gets.to_i}

mod = 10**9 + 7

dp = Array.new(n, 0)
m.times do |i|
  dp[a[i] - 1] = -1
  if i > 0 && a[i] - 1 == a[i - 1]
    puts 0
    exit
  end
end

if dp[0] == -1
  dp[1] = 1
elsif dp[1] == -1
  dp[0] = 1
else
  dp[0] = 1
  dp[1] = 2
end

2.upto(n) do |i|
  next if dp[i] == -1

  if dp[i - 1] == -1
    dp[i] = dp[i - 2] % mod
  elsif dp[i - 2] == -1
    dp[i] = dp[i - 1] % mod
  else
    dp[i] = (dp[i - 1] + dp[i - 2]) % mod
  end
end

puts dp[n - 1]
