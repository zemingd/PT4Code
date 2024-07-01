def gcd(a, b)
  return gcd(b, a) if b > a
  return a if b == 0
  gcd(b, a % b)
end

def lcm(a, b)
  g = gcd(a, b)
  a * b / g
end

a, b, c, d = gets.split.map(&:to_i)

l = lcm(c, d)

puts (b-a+1) - (b/c + b/d - b/l - ((a-1)/c + (a-1)/d - (a-1)/l))