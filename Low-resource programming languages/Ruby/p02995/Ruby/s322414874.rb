# https://atcoder.jp/contests/abc131/tasks/abc131_c

def gcd(a, b)
  return a if b.zero?
  gcd(b, a % b)
end

def lcm(a, b)
  a * b / gcd(a, b)
end

A, B, C, D = gets.split.map(&:to_i)

f = ->(n) { n - n / C - n / D  + n / lcm(C, D) }
ans = f[B] - f[A - 1]

puts ans
