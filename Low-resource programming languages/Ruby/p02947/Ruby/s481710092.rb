def comb_init(max, mod)
  fac = Array.new(max)
  finv = Array.new(max)
  inv = Array.new(max)
  fac[0] = fac[1] = 1
  finv[0] = finv[1] = 1
  inv[1] = 1
  (2...max).each do |i|
    fac[i] = fac[i - 1] * i % mod
    inv[i] = mod - inv[mod % i] * (mod / i) % mod
    finv[i] = finv[i - 1] * inv[i] % mod
  end
  { fac: fac, finv: finv, mod: mod }
end

def comb(n, k, context)
  return 0 if n < k
  return 0 if n < 0 || k < 0
  fac = context[:fac]
  finv = context[:finv]
  mod = context[:mod]
  fac[n] * (finv[k] * finv[n - k] % mod) % mod
end

N = gets.to_i
table = Hash.new { 0 }
s_list = N.times.map { gets.chomp.chars }
s_list.each do |s|
  table[s.sort] += 1
end

ans = 0
context = comb_init(N + 10, 10 ** 9 + 7)
table.each do |k, v|
  next if v == 0
  ans += comb(v, 2, context)
end
puts ans
