require 'prime'

A, B = gets.chomp.split(' ').map(&:to_i)

# ユーグリッドの互除法
# 最大公約数が算出される。すごい...
def gcd(x, y)
  return x if y.zero?

  gcd(y, x % y)
end

# 最大公約数 n を素因数分解する。
def factorize(n)
  res = []
  i = 2
  while i * i <= n
    next unless (n % i).zero?

    res.push(i)
    n /= i while (n % i).zero?

    i += 1
  end

  res.push(n) if n != 1

  res
end

g = gcd(A, B)
# 素因数分解の素数の合計 + 1する。
# p factorize(g).count + 1 # これじゃダメだった...
p g.prime_division.count + 1
