def gcd(a, b)
  if a < b
    return gcd(b, a)
  end
  if b == 0
    return a
  end
  gcd(b, a % b)
end

def lcm(a, b)
  a * b / gcd(a, b)
end

ans = 1

n = gets.to_i
n.times {
  t = gets.to_i
  ans = lcm(ans, t)
}
puts ans
