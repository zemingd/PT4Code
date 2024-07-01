MOD = 2019

l, r = gets.split.map(&:to_i)

ans = 0
# この場合，lとrの間で一回modが0になってるはずなので0
if (r%MOD) - (l%MOD) < 0
  ans = 0
# lとrのmod 2019が同じ場合
elsif (r%MOD) - (l%MOD) == 0
  # lとrが同じ数なら 
  if l == r
    ans = ((l % MOD) * (l % MOD)) % MOD
  # 違う数なら間に2019の倍数がいるので0
  else
    ans = 0
  end
elsif r-l >= 2019
  ans = 0
else
  ans = ((l % MOD) * ((l+1) % MOD)) % MOD
end
puts ans