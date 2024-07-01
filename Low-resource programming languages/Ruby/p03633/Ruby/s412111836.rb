def gcd(x, y)
  r = x % y
  return y if r.zero?

  gcd(y, r)
end

def lcm(a, l)
  return a if l.size.zero?

  b = l[0]
  n = (a * b) / gcd(a, b)
  lcm(n, l[1, l.size - 1])
end

n = gets.to_i
# ts = n.times.map { gets.to_i }
ts = $stdin.read.split.map(&:to_i)

puts lcm(ts[0], ts[1, ts.size - 1])
