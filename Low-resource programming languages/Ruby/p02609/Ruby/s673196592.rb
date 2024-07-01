n = gets.to_i
x = gets.chomp
xs = x.to_i(2)
xc = x.count('1')
def mpow(n, p, mod)
  return 0 if mod.zero?
  r = 1
  while p > 0
    r = r * n % mod if p & 1 == 1
    n = n * n % mod
    p >>= 1
  end
  r
end
def popcount(u)
  return 0 if u.zero?
  a = u % u.to_s(2).count('1')
  1 + popcount(a)
end
xsp = mpow(xs, 1, xc + 1)
xsm = mpow(xs, 1, xc - 1)
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