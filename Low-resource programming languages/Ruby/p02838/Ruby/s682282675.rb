N = gets.to_i
A = gets.chomp.split(" ").map(&:to_i)
MOD = 10 ** 9 + 7

ans = (A.inject{|r, a| (r + a) % MOD} * (N - 1)) % MOD

k = 1
tmp = 0
until(A.empty?) do
  w = 0
  A.map!{|a| w += 1 if a.odd?; a >>= 1}
  tmp += (k * (w * (w - 1)) % MOD)
  k <<= 1
  A.delete(0)
end

ans -= (tmp % MOD)
ans += MOD if ans < 0

puts ans
