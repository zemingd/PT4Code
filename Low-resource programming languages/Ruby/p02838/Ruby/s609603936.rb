N = gets.to_i
A = gets.chomp.split(" ").map(&:to_i)
MOD = 10 ** 9 + 7

ans = (A.inject{|r, a| (r + a) % MOD} * (N - 1)) % MOD
m_max = A.max == 0 ? 1 : (Math.log(A.max) / Math.log(2)).ceil

k = 1
tmp = 0
m_max.times{
  w = 0
  A.each{|a| w += 1 if (a & k) != 0}
  tmp += (k * (w * (w - 1)) % MOD)
  k <<= 1
}

ans -= (tmp % MOD)
ans += MOD if ans < 0

puts ans
