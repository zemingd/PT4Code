gets
d = gets.split.map(&:to_i)
m = d.max - 1
h = Hash.new(0)
d.each do |x|
  h[x] += 1
end
if h[0] != 1
  puts '0'
  exit
end
def modpow(n, p, mod)
  r = 1
  while p > 0
    r = r * n % mod if p & 1 == 1;
    n = n * n % mod
    p >>= 1
  end
  r
end
ans = h[0]
1.upto(m) do |i|
  ans *= modpow(h[i], h[i + 1], 998244353)
  ans %= 998244353
end
puts ans