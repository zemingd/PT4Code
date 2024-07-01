n = gets.to_i
d = gets.split.map(&:to_i).sort
max = d.max

x = Array.new(max+1, 0)
d.each{|i|
  x[i] += 1
}

if x[0]!=1
  p 0
else
  ans = 1
  MOD = 998244353
  (max-1).times{|i|
    ans *= x[i+1] ** x[i+2] % MOD
    ans %= MOD
  }
  p ans
end
