n = gets.to_i
x = gets.chomp
xs = x.to_i(2)
xc = x.count('1')
def mpow(n, p, mod)
  r = 1
  while p > 0
    r = r * n % mod if p & 1 == 1
    n = n * n % mod
    p >>= 1
  end
  r
end
@h = {0=>0, 1=>1, 2=>1}
def popcount(u)
  return @h[u] if @h[u]
  a = u % u.to_s(2).count('1')
  @h[u] = 1 + popcount(a)
end

xsp = xs % (xc + 1)
xsm = xs % (xc - 1)
n.times do |i|
  if x[i] == '0'
    y = xsp + mpow(2, n - i - 1, xc + 1)
    y = mpow(y, 1, xc + 1)
  else
    y = xsm - mpow(2, n - i - 1, xc - 1)
    y = mpow(y, 1, xc - 1)
  end
  puts popcount(y) + 1
end