# 最大公約数
def gcd(a, b)
  a,b = b, a % b while b > 0
  a
end

# 最小公倍数
def lcm(a,b)
  a * b / gcd(a,b)
end

n = gets.chop.to_i

# ansは最小公倍数になる
ans = 1

n.times do |i|
  t = gets.chop.to_i

  ans = lcm(ans, t)
end

p ans
