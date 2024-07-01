N = gets.to_i
T = []
N.times do
  T << gets.to_i
end

def gcd(a, b)
  return a if b == 0
  gcd(b, a % b)
end

ans = 1
T.each do |t|
  m = gcd(ans, t)
  ans *= (t / m)
end

puts ans