n, *a = $stdin.read.split.map(&:to_i)
a.sort!.reverse!
def gcd(a, b)
  b == 0 ? a : gcd(b, b % a)
end
res = gcd(a[0], a[1])
(2..n-1).each { |i| res = gcd(res, a[i]) }
puts res