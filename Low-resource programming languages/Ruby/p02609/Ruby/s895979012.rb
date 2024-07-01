def prepare(n, mod, x)
  dp = Array.new(n, 1)
  return [0, 0, dp] if mod == 0
  score = 0
  (1 ... n).each do |i|
    dp[i] = (dp[i - 1] * 2) % mod
  end
  (1 .. n).each do |i|
    score += dp[n - i] if x[i - 1] == '1'
  end
  [mod, score, dp]
end

def f(x)
  for i in 0 .. 100
    return i if x == 0
    popcount = 32.times.count{|j| x[j] > 0 }
    x %= popcount
  end
end

N = gets.to_i
X = gets.chomp
popcount = X.count('1')
mod1, score1, dp1 = prepare(N, popcount + 1, X)
mod2, score2, dp2 = prepare(N, popcount - 1, X)

(1 .. N).each do |i|
  if X[i - 1] == '0'
    puts f((score1 + dp1[N - i]) % mod1) + 1
  elsif popcount == 1
    puts 0
  else
    puts f((score2 - dp2[N - i]) % mod2) + 1
  end
end
