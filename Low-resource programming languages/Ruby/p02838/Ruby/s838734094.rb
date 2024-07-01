N = gets.to_i
as = gets.split.map(&:to_i)
d_c = Hash.new { 0 }
MOD = 10 ** 9 + 7

def mod_pow(a, n, mod)
  ret = 1
  while n > 0
    if n[0] == 1
      ret = ret * a % mod
    end
    a = a * a % mod
    n = n >> 1
  end
  ret
end

as.each do |a|
  (0..60).each do |i|
    if a[i] == 1
      d_c[i] += 1
    end
  end
end
ans = 0
d_c.each do |d, c|
  zero_c = N - c
  n = mod_pow(2, d, MOD)
  ans = (ans + ((zero_c * c % MOD) * n % MOD)) % MOD
end
puts ans
