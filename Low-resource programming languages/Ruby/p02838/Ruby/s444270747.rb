N = gets.to_i
as = gets.split.map(&:to_i)
max_digits = 61
d_c = Array.new(max_digits, 0)
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
  (0...max_digits).each do |i|
    if a[i] == 1
      d_c[i] += 1
    end
  end
end
ans = 0
d_c.each.with_index do |c, d|
  zero_c = N - c
  n = mod_pow(2, d, MOD)
  ans = (ans + ((zero_c * c % MOD) * n % MOD)) % MOD
end
puts ans
