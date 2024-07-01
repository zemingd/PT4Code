@fact = []
def set_fact(max_n, mod = 10 ** 9 + 7)
  @fact[0] = 1
  (1..(max_n - 1)).each do |i|
    @fact[i] = @fact[i - 1] * i % mod
  end
end

# def choose2(n, r, mod = 10 ** 9 + 7)
#   r = n - r if r > n - r
#   ((n - r + 1)..n).inject(1){|sum, item|(sum * item) % mod} \
#     * modpow((1..r).inject(1){|sum, item|(sum * item) % mod}, mod - 2, mod) \
#     % mod
# end

# (n-r+1)~n間の階乗は!n / !(n-r)
def choose(n, r, mod = 10 ** 9 + 7)
  r = n - r if r > n - r
  @fact[n] * modpow(@fact[n - r], mod - 2, mod) % mod \
    * modpow(@fact[r], mod - 2, mod) \
    % mod
end

# 繰り返し二乗法を使用
def modpow(n, p, mod = 10 ** 9 + 7)
  res = 1
  while p > 0
    if p & 1 == 1
      res = (res * n) % mod
    end
    n = (n ** 2) % mod
    p >>= 1
  end
  res
end

N, M = gets.split.map(&:to_i)
set_fact(1000)
if N >= 2 && M >= 2
puts choose(N, 2) + choose(M, 2)
elsif N < 2 && M < 2
  puts 0
elsif N < 2
  puts choose(M, 2)
elsif M < 2
  puts choose(N, 2)
end
